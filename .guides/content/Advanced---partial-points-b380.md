
{Test}(partial/run.sh)

{Check It!|assessment}(test-1592842204)

## Information
The previous code tests have a binary outcome. The number of points awarded is 0 if incorrect or the number of points specified in the test configuration if correct.

This advanced code test shows how to award any value between 0 and the maximum points specified.

The way you send the partial score back to Codio is

```bash
curl -s "$CODIO_PARTIAL_POINTS_URL&points=10" > /dev/null
```

Please refer to the help on [this page](https://docs.codio.com/courses/assessments/#partial-points)

### Source file info

| Source code information|  |
| :------ | :----------- |
| Student code folder  | `partial/Challenge.java` |
| Test code folder  | `partial/partial-test.sh` |

