#include "snake.h"
#include "terminal.h"
#include <unistd.h>

#define TICK_INTERVEL_MS 150

int main(void) {
  enable_raw_mode();
  Snake snake = create_snake();

  char grid[GRID_HEIGHT][GRID_WIDTH];

  while (1) {
    int key = read_key();

    if (key == 'q' || key == 'Q') {
      break;
    }

    if (key != -1) {
      change_direction(&snake, key);
    }

    move_snake(&snake);
    clear_grid(grid);
    draw_snake_on_grid(grid, &snake);
    render_grid(grid);
    usleep(TICK_INTERVEL_MS * 1000);
  }

  destroy_snake(&snake);
  disable_raw_mode();

  return 0;
}
