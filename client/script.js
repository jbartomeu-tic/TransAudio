const API_BASE = '/api';

const videoUrlInput = document.getElementById('videoUrl');
const btnFetch = document.getElementById('btnFetch');
const fetchLoader = document.getElementById('fetchLoader');
const btnText = btnFetch.querySelector('.btn-text');
const errorMessage = document.getElementById('errorMessage');

const videoInfoSection = document.getElementById('videoInfo');
const thumbnailImg = document.getElementById('thumbnail');
const durationBadge = document.getElementById('duration');
const videoTitleEl = document.getElementById('videoTitle');
const uploaderEl = document.getElementById('uploader');
const btnDownload = document.getElementById('btnDownload');

const downloadProgress = document.getElementById('downloadProgress');
const progressBar = document.getElementById('progressBar');
const progressPercent = document.getElementById('progressPercent');

let currentVideoData = null;

// Helper to format duration
function formatDuration(seconds) {
    const mins = Math.floor(seconds / 60);
    const secs = seconds % 60;
    return `${mins}:${secs.toString().padStart(2, '0')}`;
}

// Fetch video info
btnFetch.addEventListener('click', async () => {
    const url = videoUrlInput.value.trim();
    if (!url) {
        showError('Por favor, ingresa una URL válida.');
        return;
    }

    setLoading(true);
    hideError();
    videoInfoSection.style.display = 'none';
    downloadProgress.style.display = 'none';

    try {
        const response = await fetch(`${API_BASE}/info?url=${encodeURIComponent(url)}`);
        const data = await response.json();

        if (data.error) {
            showError(data.error);
        } else {
            currentVideoData = data;
            displayVideoInfo(data);
        }
    } catch (err) {
        showError('No se pudo conectar con el servidor. ¿Está el backend encendido?');
    } finally {
        setLoading(false);
    }
});

function setLoading(isLoading) {
    btnFetch.disabled = isLoading;
    fetchLoader.style.display = isLoading ? 'block' : 'none';
    btnText.style.display = isLoading ? 'none' : 'block';
}

function showError(msg) {
    errorMessage.textContent = msg;
    errorMessage.style.display = 'block';
}

function hideError() {
    errorMessage.style.display = 'none';
}

function displayVideoInfo(data) {
    thumbnailImg.src = data.thumbnail;
    durationBadge.textContent = formatDuration(data.duration);
    videoTitleEl.textContent = data.title;
    uploaderEl.textContent = data.uploader;
    videoInfoSection.style.display = 'flex';
}

// Download logic
btnDownload.addEventListener('click', () => {
    if (!currentVideoData) return;

    const url = videoUrlInput.value.trim();
    const title = currentVideoData.title;

    downloadProgress.style.display = 'block';
    btnDownload.disabled = true;
    const btnDownloadText = btnDownload.querySelector('span:last-child');
    const originalText = btnDownloadText.textContent;
    btnDownloadText.textContent = 'Procesando...';
    
    // Simulating progress since streaming doesn't easily report progress to fetch
    let progress = 0;
    const interval = setInterval(() => {
        progress += Math.random() * 5;
        if (progress > 92) {
            clearInterval(interval);
            progress = 92;
        }
        updateProgress(progress);
    }, 400);

    const downloadUrl = `${API_BASE}/download?url=${encodeURIComponent(url)}&title=${encodeURIComponent(title)}`;
    
    // Trigger actual download
    const link = document.createElement('a');
    link.href = downloadUrl;
    link.setAttribute('download', `${title}.mp3`);
    document.body.appendChild(link);
    link.click();
    link.remove();

    // After a reasonable time, reset the progress
    setTimeout(() => {
        clearInterval(interval);
        updateProgress(100);
        btnDownloadText.textContent = '¡Completado!';
        setTimeout(() => {
            downloadProgress.style.display = 'none';
            btnDownload.disabled = false;
            btnDownloadText.textContent = originalText;
            updateProgress(0);
        }, 2000);
    }, 6000); 
});

function updateProgress(value) {
    progressBar.style.width = `${value}%`;
    progressPercent.textContent = `${Math.round(value)}%`;
}
