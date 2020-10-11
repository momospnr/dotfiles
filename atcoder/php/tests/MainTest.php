<?php

use PHPUnit\Framework\TestCase;
use AtCoder\Main;

/**
 * Class MainTest
 */
class MainTest extends TestCase
{
    private $main;

    public function setUp(): void
    {
        $this->main = new Main();
    }

    /**
     * @dataProvider dataProviderA
     */
    public function testA(int $expected, string $a, string $b)
    {
        $result = $this->main->solveA($a, $b);
        $this->assertSame($expected, $result);
    }

    /**
     * @return Generator
     */
    public function dataProviderA(): Generator
    {
        // yield "0" => ["出力", "入力1", "入力2"];
        yield "1" => [7, "at", "coder"];
        yield "2" => [11, "php", "language"];
    }
}
