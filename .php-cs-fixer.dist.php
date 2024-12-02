<?php

declare(strict_types=1);

/*
 * This file is part of PHP CS Fixer.
 *
 * (c) Fabien Potencier <fabien@symfony.com>
 *     Dariusz Rumiński <dariusz.ruminski@gmail.com>
 *
 * This source file is subject to the MIT license that is bundled
 * with this source code in the file LICENSE.
 */

use PhpCsFixer\Config;
use PhpCsFixer\Finder;

$finder = (new Finder())
	->ignoreDotFiles(true)
	->ignoreVCSIgnored(true);
// ->exclude(['dev-tools/phpstan', 'tests/Fixtures'])
// ->in('/home/wladimir/Documents/project/iiko/iikoWeb/server');
// ->in(_DIR_);


return (new Config())
	->setRiskyAllowed(false)
	->setRules([
		'@Symfony'                                => true,
		'@PHP74Migration'                         => true,
		'indentation_type'                        => true,
		'no_superfluous_phpdoc_tags'              => false,
		'trim_array_spaces'                       => true,
		'array_indentation'                       => true,
		'no_unneeded_curly_braces'                => true,
		'control_structure_braces'                => true,
		'control_structure_continuation_position' => [
			'position' => 'next_line',
		],
		'braces_position' => [
			// 'allow_single_line_anonymous_functions'     => true,
			// 'allow_single_line_empty_anonymous_classes' => true,
			'anonymous_classes_opening_brace'   => 'next_line_unless_newline_at_signature_end',
			'anonymous_functions_opening_brace' => 'next_line_unless_newline_at_signature_end',
			'classes_opening_brace'             => 'next_line_unless_newline_at_signature_end',
			'control_structures_opening_brace'  => 'next_line_unless_newline_at_signature_end',
			'functions_opening_brace'           => 'next_line_unless_newline_at_signature_end',
		],

		// 'braces' => [
		// 	'allow_single_line_closure' => true,
		// ],
		'multiline_whitespace_before_semicolons'     => ['strategy' => 'no_multi_line'],
		'no_singleline_whitespace_before_semicolons' => true,
		'cast_spaces'                                => ['space' => 'none'],
		'types_spaces'                               => ['space' => 'single'],
		'concat_space'                               => ['spacing' => 'one'],
		'binary_operator_spaces'                     => [
			'operators' => [
				'='  => 'single_space',
				'=>' => 'align_single_space_minimal',
			],
		],
	])
	->setIndent("\t")
	->setLineEnding("\n")
	->setFinder($finder);
