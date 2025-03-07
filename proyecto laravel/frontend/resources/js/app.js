import './bootstrap';

document.addEventListener('DOMContentLoaded', () => {
    const dashboardApp = {
        apiUrl: '/api/python',
        dataContainer: document.getElementById('dashboard-data'),
        loadingIndicator: document.getElementById('loading-indicator'),
        errorContainer: document.getElementById('error-message'),
        
        init() {
            this.fetchDataFromPython();
            
            // Add refresh button event listener if it exists
            const refreshButton = document.getElementById('refresh-data');
            if (refreshButton) {
                refreshButton.addEventListener('click', () => this.fetchDataFromPython());
            }
        },
        
        fetchDataFromPython() {
            // Show loading indicator
            if (this.loadingIndicator) {
                this.loadingIndicator.style.display = 'block';
            }
            
            // Clear previous errors
            if (this.errorContainer) {
                this.errorContainer.textContent = '';
                this.errorContainer.style.display = 'none';
            }
            
            // Make AJAX request to Python backend
            axios.get(this.apiUrl)
                .then(response => {
                    this.displayData(response.data);
                })
                .catch(error => {
                    this.handleError(error);
                })
                .finally(() => {
                    // Hide loading indicator
                    if (this.loadingIndicator) {
                        this.loadingIndicator.style.display = 'none';
                    }
                });
        },
        
        displayData(data) {
            if (!this.dataContainer) return;
            
            // Clear previous data
            this.dataContainer.innerHTML = '';
            
            // Check if we have data to display
            if (!data || Object.keys(data).length === 0) {
                this.dataContainer.innerHTML = '<p>No data available</p>';
                return;
            }
            
            // Display the data - assuming data is an object with properties
            const dataHtml = Object.entries(data).map(([key, value]) => {
                return `<div class="data-item">
                    <strong>${key}:</strong> ${value}
                </div>`;
            }).join('');
            
            this.dataContainer.innerHTML = dataHtml;
        },
        
        handleError(error) {
            console.error('Error fetching data:', error);
            if (this.errorContainer) {
                this.errorContainer.textContent = 'Error loading data from the server. Please try again later.';
                this.errorContainer.style.display = 'block';
            }
            
            if (this.dataContainer) {
                this.dataContainer.innerHTML = '<p>Failed to load data</p>';
            }
        }
    };
    
    // Initialize the dashboard application
    dashboardApp.init();
});
