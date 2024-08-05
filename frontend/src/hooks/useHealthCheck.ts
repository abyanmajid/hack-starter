import { useState } from 'react';
import { apiEndpoints } from '@/config/api';

export const useHealthCheck = () => {
  const [isLoading, setIsLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);

  const healthCheck = async () => {
    setIsLoading(true);

    const response = await fetch(apiEndpoints.healthCheck, {
      method: 'GET',
    });

    const responsePayload = await response.json();

    if (!response.ok) {
      setError(responsePayload.message);
      setIsLoading(false);
    } else {
      setError(null);
      setIsLoading(false);
    }

    return responsePayload.message;
  };

  return { healthCheck, isLoading, error };
};
