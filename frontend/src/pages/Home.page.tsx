import { useEffect, useState } from 'react';
import { Center, Code, Stack, Text, Title } from '@mantine/core';
import { useHealthCheck } from '@/hooks/useHealthCheck';

export function HomePage() {
  const { healthCheck } = useHealthCheck();
  const [health, setHealth] = useState();

  useEffect(() => {
    async function requestHealthCheck() {
      const healthStatus = await healthCheck();
      setHealth(healthStatus);
    }
    requestHealthCheck();
  }, []);

  return (
    <>
      <Center>
        <Stack>
          <Title>Hackathon Starter</Title>
          <Text>
            Get started by editing <Code>/pages</Code>
          </Text>
          <Title>Example of an API Call from Backend</Title>
          <Text>
            POST request sent to <Code>localhost:8080/health</Code>
          </Text>
          <Text>
            Response from Backend: <Code>{health}</Code>
          </Text>
        </Stack>
      </Center>
    </>
  );
}
