# GeoIP SRS Generator

This project automates the generation of SRS (Static Routing System) files from the GeoIP database. It utilizes a GitHub Action to download the GeoIP data file, compile the necessary tools, and generate SRS rules specifically for the Russian segment.

## Prerequisites

- A GitHub account
- Basic knowledge of Git and GitHub
- Go programming language installed locally (for local testing)

## Project Structure

- **.github/workflows/generate-srs.yml**: GitHub Actions workflow file that automates the SRS generation process.
- **scripts/generate-srs.sh**: Shell script that contains commands to download the GeoIP data file, compile the geodat2srs program, and generate the SRS files.
- **.gitignore**: Specifies files and directories to be ignored by Git.
- **LICENSE**: Contains the licensing information for the project.
- **README.md**: Documentation for the project.

## Usage

1. **Set up the GitHub Action**: The workflow defined in `.github/workflows/generate-srs.yml` will automatically run on specified triggers (e.g., on push or pull request). Ensure that your repository is set up to use GitHub Actions.

2. **Run the Action**: Once the action is triggered, it will:
   - Download the GeoIP data file from the specified URL.
   - Compile the `geodat2srs` program from the `runetfreedom/geodat2srs` repository.
   - Generate SRS rules for the Russian segment using the command:
     ```
     ./geodat2srs geoip -i geoip.dat -o ru --prefix "geoip-"
     ```
   - Upload the generated SRS file as a release asset.

3. **Access the Generated SRS File**: After the action completes, you can find the generated SRS file in the releases section of your GitHub repository.

## Contributing

Contributions are welcome! Please feel free to submit a pull request or open an issue for any enhancements or bug fixes.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.