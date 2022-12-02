use std::fs::File;
use std::io::{self, BufRead};
use std::path::Path;

fn main() {
    if let Ok(lines) = read_lines("input.txt") {
        let mut calorie_counts = Vec::new();
        let mut current_count = 0;

        for line in lines {
            if let Ok(line_str) = line {
                if line_str.is_empty() {
                    calorie_counts.push(current_count);
                    current_count = 0;
                } else {
                    let calories = line_str.parse::<i32>().unwrap();
                    current_count += calories
                }
            }
        }

        calorie_counts.sort();
        let sum: i32 = calorie_counts.iter().rev().take(3).sum();
        println!("{}", sum);
    }
}

// The output is wrapped in a Result to allow matching on errors
// Returns an Iterator to the Reader of the lines of the file.
fn read_lines<P>(filename: P) -> io::Result<io::Lines<io::BufReader<File>>>
where P: AsRef<Path>, {
    let file = File::open(filename)?;
    Ok(io::BufReader::new(file).lines())
}
