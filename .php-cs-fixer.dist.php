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
    '@PHP74Migration'=>true,
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

// return (new Config())
//     ->setRiskyAllowed(true)
//     // ->setCacheFile(__DIR__ . '/build/shared_cache/php-cs-fixer-cache.json')
//     ->setRules([
//         // Compatibility with PHP 7.4+
//         '@PHP74Migration'       => true,
//         '@PHP74Migration:risky' => true,

//         // Presets
//         '@PSR12'            => true,
//         '@PSR12:risky'      => true,
//         '@Symfony'          => true,
//         '@Symfony:risky'    => true,
//         '@PhpCsFixer'       => true,
//         '@PhpCsFixer:risky' => true,

//         // The most dangerous options! They are excluded from above presets. Just in case.
//         'declare_strict_types'                  => false,
//         'error_suppression'                     => false,
//         'no_trailing_whitespace_in_string'      => false,
//         'no_unneeded_final_method'              => false,
//         'no_unreachable_default_argument_value' => false,
//         'no_unset_on_property'                  => false,
//         'no_useless_sprintf'                    => false,
//         'psr_autoloading'                       => false,
//         'strict_comparison'                     => false,
//         'strict_param'                          => false,
//         'string_length_to_empty'                => false,
//         'ordered_class_elements'                => false,
//         'yoda_style'                            => false,

//         // Import rules
//         'no_unused_imports'                => true,
//         'blank_line_between_import_groups' => true,
//         'fully_qualified_strict_types'     => true,
//         'global_namespace_import'          => [
//             'import_classes'   => false,
//             'import_constants' => false,
//             'import_functions' => false,
//         ],
//         'ordered_imports' => [
//             'sort_algorithm' => 'alpha',
//             'imports_order'  => ['const', 'class', 'function'],
//         ],

//         // Extra rules
//         'control_structure_braces'                         => true,
//         'increment_style'                                  => ['style' => 'post'],
//         'method_chaining_indentation'                      => true,
//         'nullable_type_declaration_for_default_null_value' => true,
//         'trim_array_spaces'                                => true,
//         'unary_operator_spaces'                            => true,

//         // PHPdocs & Comments
//         'align_multiline_comment'             => ['comment_type' => 'phpdocs_like'],
//         'final_internal_class'                => false,
//         'no_blank_lines_after_phpdoc'         => true,
//         'no_superfluous_phpdoc_tags'          => false,
//         'php_unit_internal_class'             => false,
//         'php_unit_test_class_requires_covers' => false,
//         'phpdoc_add_missing_param_annotation' => true,
//         'phpdoc_align'                        => true,
//         'phpdoc_var_annotation_correct_order' => true,
//         'single_line_comment_spacing'         => true,
//         'phpdoc_line_span'                    => [
//             'const'    => 'single',
//             'property' => 'single',
//             'method'   => 'multi',
//         ],

//         // Extra rules for spaces
//         'cast_spaces'                 => ['space' => 'none'],
//         'types_spaces'                => ['space' => 'single'],
//         'concat_space'                => ['spacing' => 'one'],
//         'blank_line_before_statement' => [
//             'statements' => [
//                 'case',
//                 'default',
//                 'declare',
//                 'do',
//                 'for',
//                 'foreach',
//                 'if',
//                 'return',
//                 'switch',
//                 'try',
//                 'while',
//                 'phpdoc',
//             ],
//         ],
//         'no_empty_statement'   => true,
//         'no_useless_else'      => true,
//         'no_extra_blank_lines' => [
//             'tokens' => [
//                 'attribute',
//                 'break',
//                 'case',
//                 'continue',
//                 'curly_brace_block',
//                 'default',
//                 'extra',
//                 'parenthesis_brace_block',
//                 'return',
//                 'square_brace_block',
//                 'switch',
//                 'throw',
//                 'use',
//             ],
//         ],

//         // Semicolons Rules
//         'no_singleline_whitespace_before_semicolons' => true,
//         'multiline_whitespace_before_semicolons'     => ['strategy' => 'no_multi_line'],

//         // Array rules
//         'array_indentation'      => true,
//         'binary_operator_spaces' => [
//             'operators' => [
//                 '='  => 'single_space',
//                 '=>' => 'align_single_space_minimal',
//             ],
//         ],
//     ])
//     ->setFinder($finder);
