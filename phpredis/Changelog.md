# Changelog

All changes to phpredis will be documented in this file.

We're basing this format on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and PhpRedis adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Changed

- Use ECHO to check liveness of connection
  [99ebd0cc](https://github.com/phpredis/phpredis/commit/99ebd0cc),
  [3243f426](https://github.com/phpredis/phpredis/commit/3243f426),
  [a5f95925](https://github.com/phpredis/phpredis/commit/a5f95925)
  ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko), [Michael Grunder](https://github.com/michael-grunder))
- Enable slot caching for session cluster
  [23b1a9d8](https://github.com/phpredis/phpredis/commit/23b1a9d84)
  ([Michael03](https://github.com/Michael03))

---

## [5.1.1] - 2019-11-11 ([GitHub](https://github.com/phpredis/phpredis/releases/tag/5.1.1), [PECL](https://pecl.php.net/package/redis/5.1.1))

### Fixed

- Fix fail to connect to redis through unix socket
  [2bae8010](https://github.com/phpredis/phpredis/commit/2bae8010),
  [9f4ededa](https://github.com/phpredis/phpredis/commit/9f4ededa)
  ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko), [Michael Grunder](https://github.com/michael-grunder))

---

## [5.1.0] - 2019-10-31 ([GitHub](https://github.com/phpredis/phpredis/releases/tag/5.1.0), [PECL](https://pecl.php.net/package/redis/5.1.0))

### Added

- Add optional support for Zstd compression, using `--enable-redis-zstd`.
  This requires libzstd version >= 1.3.0
  [2abc61da](https://github.com/phpredis/phpredis/commit/2abc61da)
  ([Remi Collet](https://github.com/remicollet))
- Add documentation for zpopmin and zpopmax
  [99ec24b3](https://github.com/phpredis/phpredis/commit/99ec24b3),
  [4ab1f940](https://github.com/phpredis/phpredis/commit/4ab1f940)
  ([alexander-schranz](https://github.com/alexander-schranz))
- Allow to specify scheme for session handler.
  [53a8bcc7](https://github.com/phpredis/phpredis/commit/53a8bcc7)
  ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))

### Changed

- Refactor redis_session
  [91a8e734](https://github.com/phpredis/phpredis/commit/91a8e734),
  [978c3074](https://github.com/phpredis/phpredis/commit/978c3074)
  ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Fix overallocation in RedisCluster directed node commands
  [cf93649](https://github.com/phpredis/phpredis/commit/cf93649)
  ([Michael Grunder](https://github.com/michael-grunder))
- Also attach slaves when caching cluster slots
  [0d6d3fdd](https://github.com/phpredis/phpredis/commit/0d6d3fdd),
  [b114fc26](https://github.com/phpredis/phpredis/commit/b114fc26)
  ([Michael Grunder](https://github.com/michael-grunder))
- Use zend_register_persistent_resource_ex for connection pooling
  [fdada7ae](https://github.com/phpredis/phpredis/commit/fdada7ae),
  [7c6c43a6](https://github.com/phpredis/phpredis/commit/7c6c43a6)
  ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))

### Fixed

- Fix regression for multihost_distribute_call added in [112c77e3](https://github.com/phpredis/phpredis/commit/112c77e3)
  [fbe0f804](https://github.com/phpredis/phpredis/commit/fbe0f804)
  ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Revert "fix regression for conntecting to ports > 32767" added in [1f41da64](https://github.com/phpredis/phpredis/commit/1f41da64) and add another fix
  [17b139d8](https://github.com/phpredis/phpredis/commit/17b139d8),
  [7ef17ce1](https://github.com/phpredis/phpredis/commit/7ef17ce1)
  ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Fix regression for conntecting to unix sockets with relative path added in [1f41da64](https://github.com/phpredis/phpredis/commit/1f41da64)
  [17b139d8](https://github.com/phpredis/phpredis/commit/17b139d8),
  [7ef17ce1](https://github.com/phpredis/phpredis/commit/7ef17ce1)
  ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Fix unix-socket detection logic broken in [418428fa](https://github.com/phpredis/phpredis/commit/418428fa)
  [a080b73f](https://github.com/phpredis/phpredis/commit/a080b73f)
  ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Fix memory leak and bug with getLastError for redis_mbulk_reply_assoc and redis_mbulk_reply_zipped.
  [7f42d628](https://github.com/phpredis/phpredis/commit/7f42d628),
  [3a622a07](https://github.com/phpredis/phpredis/commit/3a622a07)
  ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko)),
  ([Michael Grunder](https://github.com/michael-grunder))
- Fix bug with password contain "#" for redis_session
  [2bb08680](https://github.com/phpredis/phpredis/commit/2bb08680)
  ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Missing null byte in PHP_MINFO_FUNCTION
  [8bc2240c](https://github.com/phpredis/phpredis/commit/8bc2240c)
  ([Remi Collet](https://github.com/remicollet))

### Removed

- Dead code generic_unsubscribe_cmd
  [8ee4abbc](https://github.com/phpredis/phpredis/commit/8ee4abbc)
  ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))

---

## [5.0.2] - 2019-07-29 ([GitHub](https://github.com/phpredis/phpredis/releases/tag/5.0.2), [PECL](https://pecl.php.net/package/redis/5.0.2))

### Fixed

- Fix regression for conntecting to ports > 32767
  [1f41da64](https://github.com/phpredis/phpredis/commit/1f41da64),
  ([Owen Smith](https://github.com/orls))
- RedisCluster segfaults after second connection with cache_slots enabled
  [f52cd237](https://github.com/phpredis/phpredis/commit/f52cd237), 
  [cb5d6b94](https://github.com/phpredis/phpredis/commit/cb5d6b94)
  ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko), [Michael Grunder](https://github.com/michael-grunder))

### Changed

- Cleanup TSRMLS_* usage
  [94380227](https://github.com/phpredis/phpredis/commit/94380227)
  ([Remi Collet](https://github.com/remicollet))
- Replace ulong with zend_ulong
  [b4eb158a](https://github.com/phpredis/phpredis/commit/b4eb158a)
  ([Remi Collet](https://github.com/remicollet))
- Replace uint with uint32_t
  [d6fc5c73](https://github.com/phpredis/phpredis/commit/d6fc5c73)
  ([Remi Collet](https://github.com/remicollet))

---

## [5.0.1] - 2019-07-12 ([GitHub](https://github.com/phpredis/phpredis/releases/tag/5.0.1), [PECL](https://pecl.php.net/package/redis/5.0.1))

### Fixed

- RedisCluster segfaults after second connection with cache_slots enabled
  [327cf0bd](https://github.com/phpredis/phpredis/commit/327cf0bd)
  ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))

---

## [5.0.0] - 2019-07-02 ([GitHub](https://github.com/phpredis/phpredis/releases/tag/5.0.0), [PECL](https://pecl.php.net/package/redis/5.0.0))

This release contains important improvements and breaking changes.  The most
interesting are: drop PHP5 support, RedisCluster slots caching, JSON and msgpack
serializers, soft deprecation of non-Redis commands.

### Breaking Changes

- [Nullable xReadGroup COUNT and BLOCK arguments](#brk500-xreadgroup)
- [RedisArray exception now includes host information](#brk500-exception-host)
- [zRange now conforms to zRangeByScore to get scores](#brk500-zrange-withscores)

### Added
- Adds OPT_REPLY_LITERAL for rawCommand and EVAL [5cb30fb2](https://www.github.com/phpredis/phpredis/commit/5cb30fb2)
  ([Michael Grunder](https://github.com/michael-grunder))
- JSON serializer [98bd2886](https://www.github.com/phpredis/phpredis/commit/98bd2886),
  [96c57139](https://www.github.com/phpredis/phpredis/commit/96c57139),
  [235a27](https://www.github.com/phpredis/phpredis/commit/235a27)
  ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko), [Michael Grunder](https://github.com/michael-grunder))
- msgpack serializer [d5b8f833](https://www.github.com/phpredis/phpredis/commit/d5b8f833),
  [545250f3](https://www.github.com/phpredis/phpredis/commit/545250f3),
  [52bae8ab](https://www.github.com/phpredis/phpredis/commit/52bae8ab)
  ([@bgort](https://github.com/bgort), [Pavlo Yatsukhnenko](https://github.com/yatsukhnenko),
   [Michael Grunder](https://github.com/michael-grunder))
- Add support for STREAM to the type command [d7450b2f](https://www.github.com/phpredis/phpredis/commit/d7450b2f),
  [068ce978](https://www.github.com/phpredis/phpredis/commit/068ce978), [8a45d18c](https://www.github.com/phpredis/phpredis/commit/8a45d18c)
  ([Michael Grunder](https://github.com/michael-grunder), [Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Add Cluster slots caching [9f0d7bc0](https://www.github.com/phpredis/phpredis/commit/9f0d7bc0),
  [ea081e05](https://www.github.com/phpredis/phpredis/commit/ea081e05) ([Michael Grunder](https://github.com/michael-grunder))

### Changed

- <a id="brk500-exception-host">Add server address to exception message.  This changes the exception message from `read error on connection` to
  `read error on connection to <host>:<port>` or `read error on connection to </path/to/socket>` so code matching the exception string might break.
  [e8fb49be](https://www.github.com/phpredis/phpredis/commit/e8fb49be),
  [34d6403d](https://www.github.com/phpredis/phpredis/commit/34d6403d)
  ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Allow to specify server address as `schema://host` [418428fa](https://www.github.com/phpredis/phpredis/commit/418428fa)
  ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko)).
- Update Fedora installation instructions [90aa067c](https://www.github.com/phpredis/phpredis/commit/90aa067c)
  ([@remicollet](https://github.com/remicollet))
- Enable connection pooling by default [8206b147](https://www.github.com/phpredis/phpredis/commit/8206b147)
  ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- <a id="brk500-ping-argument">Allow PING to take an optional argument. PING now returns `true` instead of "+PONG" [6e494170](https://www.github.com/phpredis/phpredis/commit/6e494170)
  ([Michael Grunder](https://github.com/michael-grunder))
- <a id="brk500-zrange-withscores">Allow ZRANGE to be called either with `true` or `['withscores' => true]`
  [19f3efcf](https://www.github.com/phpredis/phpredis/commit/19f3efcf) ([Michael Grunder](https://github.com/michael-grunder))
- Documentation improvements ([@alexander-schranz](https://github.com/alexander-schranz), [@cookieguru](https://github.com/cookieguru),
  [Pavlo Yatsukhnenko](https://github.com/yatsukhnenko), [Michael Grunder](https://github.com/michael-grunder))

### Deprecated

- Soft deprecate methods that aren't actually Redis commands [a81b4f2d](https://www.github.com/phpredis/phpredis/commit/a81b4f2d),
  [95c8aab9](https://www.github.com/phpredis/phpredis/commit/95c8aab9), [235a27](https://www.github.com/phpredis/phpredis/commit/235a27) ([@michael-grunder](https://github.com/michael-grunder), [@yatsukhnenko](https://github.com/weltling))
- Remove HAVE_SPL define [[55c5586c](https://www.github.com/phpredis/phpredis/commit/55c5586c)] ([@petk](https://github.com/petk))

### Removed

- Drop PHP5 support [[f9928642](https://www.github.com/phpredis/phpredis/commit/f9928642), [46a50c12](https://www.github.com/phpredis/phpredis/commit/46a50c12), [4601887d](https://www.github.com/phpredis/phpredis/commit/4601887d), [6ebb36ce](https://www.github.com/phpredis/phpredis/commit/6ebb36ce), [fdbe9d29](https://www.github.com/phpredis/phpredis/commit/fdbe9d29)] (Michael
  Grunder)

### Fixed

- Reworked PHP msgpack >= 2.0.3 version requirement. [6973478](https://www.github.com/phpredis/phpredis/commit/6973478)..[a537df8](https://www.github.com/phpredis/phpredis/commit/a537df8)
  ([@michael-grunder](https://github.com/michael-grunder)).
- Enable pooling for cluster slave nodes [17600dd1](https://www.github.com/phpredis/phpredis/commit/17600dd1) ([Michael Grunder](https://github.com/michael-grunder))
- xInfo response format [4852a510](https://www.github.com/phpredis/phpredis/commit/4852a510), [ac9dca0a](https://www.github.com/phpredis/phpredis/commit/ac9dca0a) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- <a id="brk500-xreadgroup">Make the XREADGROUP optional COUNT and BLOCK arguments nullable
  [0c17bd27](https://www.github.com/phpredis/phpredis/commit/0c17bd27)
  ([Michael Grunder](https://github.com/michael-grunder))
- Allow persistent_id to be passed as NULL with strict_types enabled [60223762](https://www.github.com/phpredis/phpredis/commit/60223762)
  ([Michael Grunder](https://github.com/michael-grunder))
- Fix TypeError when using built-in constants in `setOption` [4c7643ee](https://www.github.com/phpredis/phpredis/commit/4c7643ee)
  ([@JoyceBabu](https://github.com/JoyceBabu))
- Handle references in MGET [60d8b679](https://www.github.com/phpredis/phpredis/commit/60d8b679) ([Michael Grunder](https://github.com/michael-grunder))

---

## [4.3.0] - 2019-03-13 ([GitHub](https://github.com/phpredis/phpredis/releases/tag/4.3.0), [PECL](https://pecl.php.net/package/redis/4.3.0))

This is probably the last release with PHP 5 suport!!!

### Added

- RedisArray auth [b5549cff](https://www.github.com/phpredis/phpredis/commit/b5549cff), [339cfa2b](https://www.github.com/phpredis/phpredis/commit/339cfa2b),
  [6b411aa8](https://www.github.com/phpredis/phpredis/commit/6b411aa8) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Add ZPOPMAX and ZPOPMIN support [46f03561](https://www.github.com/phpredis/phpredis/commit/46f03561),
  [f89e941a](https://www.github.com/phpredis/phpredis/commit/f89e941a),
  [2ec7d91a](https://www.github.com/phpredis/phpredis/commit/2ec7d91a) (@mbezhanov, [Michael Grunder](https://github.com/michael-grunder))
- Implement GEORADIUS_RO and GEORADIUSBYMEMBER_RO [22d81a94](https://www.github.com/phpredis/phpredis/commit/22d81a94) ([Michael Grunder](https://github.com/michael-grunder))
- RedisCluster auth [c5994f2a](https://www.github.com/phpredis/phpredis/commit/c5994f2a) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Different key hashing algorithms from hash extension [850027ff](https://www.github.com/phpredis/phpredis/commit/850027ff)
  ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))

### Changed

- Proper persistent connections pooling implementation [a3703820](https://www.github.com/phpredis/phpredis/commit/a3703820),
  [c76e00fb](https://www.github.com/phpredis/phpredis/commit/c76e00fb), [0433dc03](https://www.github.com/phpredis/phpredis/commit/0433dc03),
  [c75b3b93](https://www.github.com/phpredis/phpredis/commit/c75b3b93) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Use zend_string for storing key hashing algorithm [8cd165df](https://www.github.com/phpredis/phpredis/commit/8cd165df),
  [64e6a57f](https://www.github.com/phpredis/phpredis/commit/64e6a57f), [Pavlo Yatsukhnenko](https://github.com/yatsukhnenko)

- Add callback parameter to subscribe/psubscribe arginfo [0653ff31](https://www.github.com/phpredis/phpredis/commit/0653ff31),
  ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Xgroup updates [15995c06](https://www.github.com/phpredis/phpredis/commit/15995c06) ([Michael Grunder](https://github.com/michael-grunder))
- Use zend_string for pipeline_cmd [e98f5116](https://www.github.com/phpredis/phpredis/commit/e98f5116) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Implement consistent hashing algorithm for RedisArray [bb32e6f3](https://www.github.com/phpredis/phpredis/commit/bb32e6f3), [71922bf1](https://www.github.com/phpredis/phpredis/commit/71922bf1)
  ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Use zend_string for storing RedisArray hosts [602740d3](https://www.github.com/phpredis/phpredis/commit/602740d3),
  [3e7e1c83](https://www.github.com/phpredis/phpredis/commit/3e7e1c83) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Refactor redis_sock_read_bulk_reply [bc4dbc4b](https://www.github.com/phpredis/phpredis/commit/bc4dbc4b) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))

### Fixed

- Don't check the number affected keys in PS_UPDATE_TIMESTAMP_FUNC [b00060ce](https://www.github.com/phpredis/phpredis/commit/b00060ce)
  ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Cancel pipeline mode without executing commands [789256d7](https://www.github.com/phpredis/phpredis/commit/789256d7)
  ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Breaking the lock acquire loop in case of network problems [61889cd7](https://www.github.com/phpredis/phpredis/commit/61889cd7)
  ([@SkydiveMarius](https://github.com/SkydiveMarius))
- Update lzf_compress to be compatible with PECL lzf extension [b27fd430](https://www.github.com/phpredis/phpredis/commit/b27fd430)
  ([@jrchamp](https://github.com/jrchamp))
- Fix RedisCluster keys memory leak [3b56b7db](https://www.github.com/phpredis/phpredis/commit/3b56b7db) ([Michael Grunder](https://github.com/michael-grunder))
- Directly use return_value in RedisCluster::keys method [ad10a49e](https://www.github.com/phpredis/phpredis/commit/ad10a49e)
  ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Fix segfault in Redis Cluster with inconsistent configuration [72749916](https://www.github.com/phpredis/phpredis/commit/72749916),
  [6e455e2e](https://www.github.com/phpredis/phpredis/commit/6e455e2e) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Masters info leakfix [91bd7426](https://www.github.com/phpredis/phpredis/commit/91bd7426) ([Michael Grunder](https://github.com/michael-grunder))
- Remove unused parameter lazy_connect from redis_sock_create [c0793e8b](https://www.github.com/phpredis/phpredis/commit/c0793e8b)
  ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Remove useless `ZEND_ACC_[C|D]TOR`. [bc9b5597](https://www.github.com/phpredis/phpredis/commit/bc9b5597) (@[twosee](https://github.com/twose))
- Documentation improvements ([yulonghu](https://github.com/yulonghu), [@alexander-schranz](https://github.com/alexander-schranz), [@hmc](https://github.com/hmczju),
  [Pavlo Yatsukhnenko](https://github.com/yatsukhnenko), [Michael Grunder](https://github.com/michael-grunder))

---

## [4.2.0] - 2018-11-08 ([GitHub](https://github.com/phpredis/phpredis/releases/tag/4.2.0), [PECL](https://pecl.php.net/package/redis/4.2.0))

The main feature of this release is new Streams API implemented by
[Michael Grunder](https://github.com/michael-grunder).

### Added

- Streams API [2c9e0572](https://www.github.com/phpredis/phpredis/commit/2c9e0572), [0b97ec37](https://www.github.com/phpredis/phpredis/commit/0b97ec37) ([Michael Grunder](https://github.com/michael-grunder))
- Display ini entries in output of phpinfo [908ac4b3](https://www.github.com/phpredis/phpredis/commit/908ac4b3) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Persistant connections can be closed via close method + change reconnection
  logic [1d997873](https://www.github.com/phpredis/phpredis/commit/1d997873) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))

### Changed

- Optimize close method [2a1ef961](https://www.github.com/phpredis/phpredis/commit/2a1ef961) ([yulonghu](https://github.com/yulonghu))
- Use a ZSET insted of SET for EVAL tests [2e412373](https://www.github.com/phpredis/phpredis/commit/2e412373) ([Michael Grunder](https://github.com/michael-grunder))
- Modify session testing logic [bfd27471](https://www.github.com/phpredis/phpredis/commit/bfd27471) ([Michael Grunder](https://github.com/michael-grunder))
- Documentation improvements ([@michael-grunder](https://github.com/michael-grunder), [@elcheco](https://github.com/elcheco), [@lucascourot](https://github.com/lucascourot), [@nolimitdev](https://github.com/nolimitdev),
  [Michael Grunder](https://github.com/michael-grunder))

### Fixed

- Prevent potential infinite loop for sessions [4e2de158](https://www.github.com/phpredis/phpredis/commit/4e2de158) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Fix coverty warnings [6f7ddd27](https://www.github.com/phpredis/phpredis/commit/6f7ddd27) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Fix session memory leaks [071a1d54](https://www.github.com/phpredis/phpredis/commit/071a1d54), [92f14b14](https://www.github.com/phpredis/phpredis/commit/92f14b14) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko),
  [Michael Grunder](https://github.com/michael-grunder))
- Fix XCLAIM on 32-bit installs [18dc2aac](https://www.github.com/phpredis/phpredis/commit/18dc2aac) ([Michael Grunder](https://github.com/michael-grunder))
- Build warning fixes [b5093910](https://www.github.com/phpredis/phpredis/commit/b5093910), [51027044](https://www.github.com/phpredis/phpredis/commit/51027044), [8b0f28cd](https://www.github.com/phpredis/phpredis/commit/8b0f28cd) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko),
  [Remi Collet](https://github.com/remicollet), [twosee](https://github.com/twose))
- Fix incorrect arginfo for `Redis::sRem` and `Redis::multi` [25b043ce](https://www.github.com/phpredis/phpredis/commit/25b043ce)
  ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Treat a -1 response from cluster_check_response as a timeout. [27df9220](https://www.github.com/phpredis/phpredis/commit/27df9220),
  [07ef7f4e](https://www.github.com/phpredis/phpredis/commit/07ef7f4e), [d1172426](https://www.github.com/phpredis/phpredis/commit/d1172426) ([Michael Grunder](https://github.com/michael-grunder)).
- Missing space between command and args [0af2a7fe](https://www.github.com/phpredis/phpredis/commit/0af2a7fe) ([@remicollet](https://github.com/remicollet))
- Reset the socket after a timeout to make sure no wrong data is received
  [cd6ebc6d](https://www.github.com/phpredis/phpredis/commit/cd6ebc6d) ([@marcdejonge](https://github.com/marcdejonge))
- Allow '-' and '+' arguments and add tests for zLexCount and zRemRangeByLex
  [d4a08697](https://www.github.com/phpredis/phpredis/commit/d4a08697) ([Michael Grunder](https://github.com/michael-grunder))
- Fix printf format warnings [dcde9331](https://www.github.com/phpredis/phpredis/commit/dcde9331) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Session module is required [58bd8cc8](https://www.github.com/phpredis/phpredis/commit/58bd8cc8) ([@remicollet](https://github.com/remicollet))
- Set default values for ini entries [e206ce9c](https://www.github.com/phpredis/phpredis/commit/e206ce9c) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))

---

## [4.0.0] - 2018-03-07 ([GitHub](https://github.com/phpredis/phpredis/releases/tag/4.0.0), [PECL](https://pecl.php.net/package/redis/4.0.0))

*WARNING:* THIS RELEASE CONTAINS BREAKING API CHANGES!

### Added

- Add proper ARGINFO for all methods. ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko), [Michael Grunder](https://github.com/michael-grunder))
- Let EXISTS take multiple keys [cccc39](https://www.github.com/phpredis/phpredis/commit/cccc39) ([Michael Grunder](https://github.com/michael-grunder))
- Implement SWAPDB and UNLINK commands [84f1f28b](https://www.github.com/phpredis/phpredis/commit/84f1f28b), [9e65c429](https://www.github.com/phpredis/phpredis/commit/9e65c429) ([Michael Grunder](https://github.com/michael-grunder))
- Add LZF compression (experimental) [e2c51251](https://www.github.com/phpredis/phpredis/commit/e2c51251), [8cb2d5bd](https://www.github.com/phpredis/phpredis/commit/8cb2d5bd), [8657557](https://www.github.com/phpredis/phpredis/commit/8657557) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Allow mixing MULTI and PIPELINE modes (experimental) [5874b0](https://www.github.com/phpredis/phpredis/commit/5874b0) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))

### Changed

- Use zend_string as returning value for ra_extract_key and ra_call_extractor
  [9cd05911](https://www.github.com/phpredis/phpredis/commit/9cd05911) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Return real connection error as exception [5b9c0c60](https://www.github.com/phpredis/phpredis/commit/5b9c0c60) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko),
  [Michael Grunder](https://github.com/michael-grunder))
- Use zend_string for storing auth and prefix members [4b8336f7](https://www.github.com/phpredis/phpredis/commit/4b8336f7)
  ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Add tcp_keepalive option to redis sock [68c58513](https://www.github.com/phpredis/phpredis/commit/68c58513), [5101172a](https://www.github.com/phpredis/phpredis/commit/5101172a), [010336d5](https://www.github.com/phpredis/phpredis/commit/010336d5),
  [51e48729](https://www.github.com/phpredis/phpredis/commit/51e48729) ([@git-hulk](https://github.com/git-hulk), [Michael Grunder](https://github.com/michael-grunder))
- More robust GEORADIUS COUNT validation [f7edee5d](https://www.github.com/phpredis/phpredis/commit/f7edee5d) ([Michael Grunder](https://github.com/michael-grunder))
- Allow to use empty string as persistant_id [ec4fd1bd](https://www.github.com/phpredis/phpredis/commit/ec4fd1bd) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Documentation improvements ([Michael Grunder](https://github.com/michael-grunder), [@TomA-R](https://github.com/TomA-R))

### Fixed

- Disallow using empty string as session name. [485db46f](https://www.github.com/phpredis/phpredis/commit/485db46f) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- The element of z_seeds may be a reference on php7 [367bc6aa](https://www.github.com/phpredis/phpredis/commit/367bc6aa), [1e63717a](https://www.github.com/phpredis/phpredis/commit/1e63717a)
  ([@janic716](https://github.com/janic716))
- Avoid connection in helper methods [91e9cfe1](https://www.github.com/phpredis/phpredis/commit/91e9cfe1) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Don't use convert_to_string in redis_hmget_cmd [99335d6](https://www.github.com/phpredis/phpredis/commit/99335d6) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- PHP >=7.3.0 uses zend_string to store `php_url` elements [b566fb44](https://www.github.com/phpredis/phpredis/commit/b566fb44) ([@fmk](https://github.com/fmk))

---

## [3.1.5] - 2017-09-27 ([GitHub](https://github.com/phpredis/phpredis/releases/tag/3.1.5), [PECL](https://pecl.php.net/package/redis/3.1.5))

This is interim release which contains only bug fixes.

### Fixed

- Fix segfault when extending Redis class in PHP 5 [d23eff](https://www.github.com/phpredis/phpredis/commit/d23eff) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Fix RedisCluster constructor with PHP 7 strict scalar type [5c21d7](https://www.github.com/phpredis/phpredis/commit/5c21d7)
  ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Allow to use empty string as persistant_id [344de5](https://www.github.com/phpredis/phpredis/commit/344de5) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Fix cluster_init_seeds. [db1347](https://www.github.com/phpredis/phpredis/commit/db1347) ([@adlagares](https://github.com/adlagares))
- Fix z_seeds may be a reference [42581a](https://www.github.com/phpredis/phpredis/commit/42581a) ([@janic716](https://github.com/janic716))
- PHP >=7.3 uses zend_string for php_url elements [b566fb](https://www.github.com/phpredis/phpredis/commit/b566fb) ([@fmk](https://github.com/fmk))

---

## [3.1.4] - 2017-09-27 ([GitHub](https://github.com/phpredis/phpredis/releases/tag/3.1.4), [PECL](https://pecl.php.net/package/redis/3.1.4))

The primary new feature phpredis 3.1.4 is the ability to send MULTI .. EXEC
blocks in pipeline mode.  There are also many bugfixes and minor improvements
to the api, listed below.

### Added

- Allow mixing MULTI and PIPELINE modes (experimental)!  [5874b0](https://www.github.com/phpredis/phpredis/commit/5874b0)
  ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Added integration for coverty static analysis and fixed several warnings
  [faac8b0](https://www.github.com/phpredis/phpredis/commit/faac8b0), [eff7398](https://www.github.com/phpredis/phpredis/commit/eff7398), [4766c25](https://www.github.com/phpredis/phpredis/commit/4766c25), [0438ab4](https://www.github.com/phpredis/phpredis/commit/0438ab4), [1e0b065](https://www.github.com/phpredis/phpredis/commit/1e0b065), [733732a](https://www.github.com/phpredis/phpredis/commit/733732a), [26eeda5](https://www.github.com/phpredis/phpredis/commit/26eeda5), [735025](https://www.github.com/phpredis/phpredis/commit/735025),
   [42f1c9](https://www.github.com/phpredis/phpredis/commit/42f1c9), [af71d4](https://www.github.com/phpredis/phpredis/commit/af71d4) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko)).
- Added arginfo introspection structures [81a0303](https://www.github.com/phpredis/phpredis/commit/81a0303), [d5609fc](https://www.github.com/phpredis/phpredis/commit/d5609fc), [e5660be](https://www.github.com/phpredis/phpredis/commit/e5660be), [3c60e1f](https://www.github.com/phpredis/phpredis/commit/3c60e1f),
  [50dcb15](https://www.github.com/phpredis/phpredis/commit/50dcb15), [6c2c6fa](https://www.github.com/phpredis/phpredis/commit/6c2c6fa), [212e323](https://www.github.com/phpredis/phpredis/commit/212e323), [e23be2c](https://www.github.com/phpredis/phpredis/commit/e23be2c), [682593d](https://www.github.com/phpredis/phpredis/commit/682593d), [f8de702](https://www.github.com/phpredis/phpredis/commit/f8de702), [4ef3acd](https://www.github.com/phpredis/phpredis/commit/4ef3acd), [f116be9](https://www.github.com/phpredis/phpredis/commit/f116be9),
  [5c111dd](https://www.github.com/phpredis/phpredis/commit/5c111dd), [9caa029](https://www.github.com/phpredis/phpredis/commit/9caa029), [0d69650](https://www.github.com/phpredis/phpredis/commit/0d69650), [6859828](https://www.github.com/phpredis/phpredis/commit/6859828), [024e593](https://www.github.com/phpredis/phpredis/commit/024e593), [3643ab6](https://www.github.com/phpredis/phpredis/commit/3643ab6), [f576fab](https://www.github.com/phpredis/phpredis/commit/f576fab), [122d41f](https://www.github.com/phpredis/phpredis/commit/122d41f),
  [a09d0e6](https://www.github.com/phpredis/phpredis/commit/a09d0e6) ([Tyson Andre](https://github.com/TysonAndre), [Pavlo Yatsukhnenko](https://github.com/yatsukhnenko)).
- Added a github issue template [61aba9](https://www.github.com/phpredis/phpredis/commit/61aba9) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))

### Changed

- Refactor redis_send_discard [ea15ce](https://www.github.com/phpredis/phpredis/commit/ea15ce) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Improve redis array rehash [577a91](https://www.github.com/phpredis/phpredis/commit/577a91) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Change redis array pure_cmds from zval to hashtable [a56ed7](https://www.github.com/phpredis/phpredis/commit/a56ed7) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Use zend_string rather than char for various context fields (err, prefix, etc)
  [2bf7b2](https://www.github.com/phpredis/phpredis/commit/2bf7b2) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Updated runtime exception handling [8dcaa4](https://www.github.com/phpredis/phpredis/commit/8dcaa4), [7c1407](https://www.github.com/phpredis/phpredis/commit/7c1407) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))

### Fixed

- Fixed link to redis cluster documentation [3b0b06](https://www.github.com/phpredis/phpredis/commit/3b0b06) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Removed duplicate HGET in redis array hash table, formatting [d0b9c5](https://www.github.com/phpredis/phpredis/commit/d0b9c5)
  ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko)).
- Treat NULL bulk as success for session read [659450](https://www.github.com/phpredis/phpredis/commit/659450) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Fix valgrind warnings [471ce07](https://www.github.com/phpredis/phpredis/commit/471ce07), [1ab89e1](https://www.github.com/phpredis/phpredis/commit/1ab89e1), [b624a8b](https://www.github.com/phpredis/phpredis/commit/b624a8b) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Fix php5/php7 compatibility layer [1ab89e](https://www.github.com/phpredis/phpredis/commit/1ab89e), [4e3225](https://www.github.com/phpredis/phpredis/commit/4e3225) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Fix typo in README.markdown [e47e44](https://www.github.com/phpredis/phpredis/commit/e47e44) ([Toby Schrapel](https://github.com/schrapel))
- Initialize gc member of zend_string [37f569](https://www.github.com/phpredis/phpredis/commit/37f569) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko)).
- Don't try to set TCP_NODELAY on a unix socket and don't warn on multiple
  calls to pipeline [d11798](https://www.github.com/phpredis/phpredis/commit/d11798), [77aeba](https://www.github.com/phpredis/phpredis/commit/77aeba) ([Michael Grunder](https://github.com/michael-grunder))
- Various other library fixes [142b51](https://www.github.com/phpredis/phpredis/commit/142b51), [4452f6](https://www.github.com/phpredis/phpredis/commit/4452f6), [e672f4](https://www.github.com/phpredis/phpredis/commit/e672f4), [658ee3](https://www.github.com/phpredis/phpredis/commit/658ee3), [c9df77](https://www.github.com/phpredis/phpredis/commit/c9df77), [4a0a46](https://www.github.com/phpredis/phpredis/commit/4a0a46)
  ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))

### Removed

- Remove unused PHP_RINIT and PHP_RSHUTDOWN functions [c760bf](https://www.github.com/phpredis/phpredis/commit/c760bf) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))

---

## [3.1.3] - 2017-07-15 ([GitHub](https://github.com/phpredis/phpredis/releases/tag/3.1.3), [PECL](https://pecl.php.net/package/redis/3.1.3))

This release contains two big improvements:

1. Adding a new printf like command construction function with additionaly
   format specifiers specific to phpredis.
2. Implementation of custom objects for Redis and RedisArray wich eliminates
   double hash lookup.

Also many small improvements and bug fixes were made.

### Added

- Add hStrLen command [c52077](https://www.github.com/phpredis/phpredis/commit/c52077), [fb88e1](https://www.github.com/phpredis/phpredis/commit/fb88e1) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- A printf like method to construct a Redis RESP command [a4a0ed](https://www.github.com/phpredis/phpredis/commit/a4a0ed), [d75081](https://www.github.com/phpredis/phpredis/commit/d75081),
  [bdd287](https://www.github.com/phpredis/phpredis/commit/bdd287), [0eaeae](https://www.github.com/phpredis/phpredis/commit/0eaeae), [b3d00d](https://www.github.com/phpredis/phpredis/commit/b3d00d) ([Michael Grunder](https://github.com/michael-grunder))
- Use custom objects instead of zend_list for storing Redis/RedisArray [a765f8](https://www.github.com/phpredis/phpredis/commit/a765f8),
  [8fa85a](https://www.github.com/phpredis/phpredis/commit/8fa85a) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Add configureoption tag to package.xml [750963](https://www.github.com/phpredis/phpredis/commit/750963) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))

### Changed

- Add optional COUNT argument to sPop [d2e203](https://www.github.com/phpredis/phpredis/commit/d2e203) ([Michael Grunder](https://github.com/michael-grunder))
- Allow sInterStore to take one arg [26aec4](https://www.github.com/phpredis/phpredis/commit/26aec4), [4cd06b](https://www.github.com/phpredis/phpredis/commit/4cd06b) ([Michael Grunder](https://github.com/michael-grunder))
- Allow MIGRATE to accept multiple keys [9aa3db](https://www.github.com/phpredis/phpredis/commit/9aa3db) ([Michael Grunder](https://github.com/michael-grunder))
- Use crc32 table from PHP distro [f81694](https://www.github.com/phpredis/phpredis/commit/f81694) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Throw exception for all non recoverable errors [e37239](https://www.github.com/phpredis/phpredis/commit/e37239) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Increase read buffers size [520e06](https://www.github.com/phpredis/phpredis/commit/520e06) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Better documentation [f0c25a](https://www.github.com/phpredis/phpredis/commit/f0c25a), [c5991f](https://www.github.com/phpredis/phpredis/commit/c5991f), [9ec9ae](https://www.github.com/phpredis/phpredis/commit/9ec9ae) ([Michael Grunder](https://github.com/michael-grunder))
- Better TravisCI integration [e37c08](https://www.github.com/phpredis/phpredis/commit/e37c08) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))

### Fixed

- Make sure redisCluster members are all initialized on (re)creation [162d88](https://www.github.com/phpredis/phpredis/commit/162d88)
- ([Michael Grunder](https://github.com/michael-grunder)).
- Fix Null Bulk String response parsing in cluster library [058753](https://www.github.com/phpredis/phpredis/commit/058753)
- ([Alberto Fernández](https://github.com/albertofem))
- Allow using numeric string in zInter command [ba0070](https://www.github.com/phpredis/phpredis/commit/ba0070) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Use ZVAL_DEREF macros for dereference input variables [ad4596](https://www.github.com/phpredis/phpredis/commit/ad4596)
- ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Fix read_timeout [18149e](https://www.github.com/phpredis/phpredis/commit/18149e), [b56dc4](https://www.github.com/phpredis/phpredis/commit/b56dc4) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Fix zval_get_string impl for PHP5 [4e56ba](https://www.github.com/phpredis/phpredis/commit/4e56ba) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Fix Redis/RedisArray segfaults [be5c1f](https://www.github.com/phpredis/phpredis/commit/be5c1f), [635c3a](https://www.github.com/phpredis/phpredis/commit/635c3a), [1f8dde](https://www.github.com/phpredis/phpredis/commit/1f8dde), [43e1e0](https://www.github.com/phpredis/phpredis/commit/43e1e0)
- ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Fix memory leak and potential segfault [aa6ff7](https://www.github.com/phpredis/phpredis/commit/aa6ff7), [88efaa](https://www.github.com/phpredis/phpredis/commit/88efaa) ([Michael Grunder](https://github.com/michael-grunder))
- Assume "NULL bulk" reply as success (empty session data) [4a81e1](https://www.github.com/phpredis/phpredis/commit/4a81e1)
  ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Refactoring ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko), [Michael Grunder](https://github.com/michael-grunder))

---

## [3.1.2] - 2017-03-16 ([GitHub](https://github.com/phpredis/phpredis/releases/tag/3.1.2), [PECL](https://pecl.php.net/package/redis/3.1.2))

### Changes

- Re allow single array for sInterStore [6ef0c2](https://www.github.com/phpredis/phpredis/commit/6ef0c2), [d01966](https://www.github.com/phpredis/phpredis/commit/d01966) ([Michael Grunder](https://github.com/michael-grunder))
- Better TravisCI integration [4fd2f6](https://www.github.com/phpredis/phpredis/commit/4fd2f6) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))

### Fixed

- RedisArray segfault fix [564ce3](https://www.github.com/phpredis/phpredis/commit/564ce3) ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))
- Small memory leak fix [645888b](https://www.github.com/phpredis/phpredis/commit/645888b) (Mike Grunder)
- Segfault fix when recreating RedisCluster objects [abf7d4](https://www.github.com/phpredis/phpredis/commit/abf7d4) ([Michael Grunder](https://github.com/michael-grunder))
- Fix for RedisCluster bulk response parsing [4121c4](https://www.github.com/phpredis/phpredis/commit/4121c4) ([Alberto Fernández](https://github.com/albertofem))

---

## [3.1.1] - 2017-02-01 ([GitHub](https://github.com/phpredis/phpredis/releases/tag/3.1.1), [PECL](https://pecl.php.net/package/redis/3.1.1))

This release contains mostly fixes for issues introduced when merging
the php 5 and 7 codebase into a single branch.

- Additional test updates for 32 bit systems ([@remicollet](https://github.com/remicollet))
- ARM rounding issue in tests ([@remicollet](https://github.com/remicollet))
- Use new zend_list_close instead of zend_list_delete when reconnecting.
- Refactoring of redis_boolean_response_impl and redis_sock_write ([@yatsukhnenko](https://github.com/weltling))
- Fixed a segfault in igbinary serialization ([@yatsukhnenko](https://github.com/weltling))
- Restore 2.2.8/3.0.0 functionality to distinguish between an error
  and simply empty session data. ([@remicollet](https://github.com/remicollet))
- Fix double to string conversion function ([@yatsukhnenko](https://github.com/weltling))
- Use PHP_FE_END definition when available ([@remicollet](https://github.com/remicollet))
- Fixed various 'static function declared but not used' warnings
- Fixes to various calls which were typecasting pointers to the
- wrong size. ([@remicollet](https://github.com/remicollet))
-
- Added php session unit test ([@yatsukhnenko](https://github.com/weltling))
- Added explicit module dependancy for igbinary ([@remicollet](https://github.com/remicollet))
- Added phpinfo serialization information ([@remicollet](https://github.com/remicollet))

---

## [3.1.0] - 2016-12-14 ([GitHub](https://github.com/phpredis/phpredis/releases/3.1.0), [PECL](https://pecl.php.net/package/redis/3.1.0))

In this version of phpredis codebase was unified to work with all versions of php \o/
Also many bug fixes and some improvements has been made.

### Added

- Support the client to Redis Cluster just having one master ([andyli](https://github.com/andyli029)) [892e5646](https://www.github.com/phpredis/phpredis/commit/892e5646)
- Allow both long and strings that are longs for zrangebyscore offset/limit
  ([Michael Grunder](https://github.com/michael-grunder)) [bdcdd2aa](https://www.github.com/phpredis/phpredis/commit/bdcdd2aa)
- Process NX|XX, CH and INCR options in zAdd command [71c9f7c8](https://www.github.com/phpredis/phpredis/commit/71c9f7c8)
  ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))

### Fixed

- Fix incrby/decrby for large integers ([Michael Grunder](https://github.com/michael-grunder)) [3a12758a](https://www.github.com/phpredis/phpredis/commit/3a12758a)
- Use static declarations for spl_ce_RuntimeException decl [a9857d69](https://www.github.com/phpredis/phpredis/commit/a9857d69)
  ([Jeremy Mikola](https://github.com/jmikola))
- Fixed method call problem causes session handler to display two times
  [24f86c49](https://www.github.com/phpredis/phpredis/commit/24f86c49) ([ZiHang Gao](https://github.com/cdoco)).
- PSETEX method returns '+OK' on success, not true [afcd8445](https://www.github.com/phpredis/phpredis/commit/afcd8445) ([sitri@ndxbn](https://github.com/ndxbn))
- Fix integer overflow for long (>32bit) increments in hIncrBy [58e1d799](https://www.github.com/phpredis/phpredis/commit/58e1d799)
  ([@iyesin](https://github.com/iyesin))
- Move zend_object handler to the end ([Michael Grunder](https://github.com/michael-grunder)) [34107966](https://www.github.com/phpredis/phpredis/commit/34107966)
- Using setOption on redis array causes immediate connection [f1a85b38](https://www.github.com/phpredis/phpredis/commit/f1a85b38)
  ([Pavlo Yatsukhnenko](https://github.com/yatsukhnenko))

---

## [3.0.0] - 2016-06-10 ([GitHub](https://github.com/phpredis/phpredis/releases/3.0.0), [PECL](https://pecl.php.net/package/redis/3.0.0))

This version of phpredis supports cluster and is intended for php versions
7.0.0 and higher. To compile cluster-enabled phpredis for older versions
of php, please use the 2.2.8 pecl package.

A huge thanks goes out to Sean DuBois for doing all the work required to get
phpredis working in php 7.0!

### Added

- PHP 7 Support [3159bd2](https://www.github.com/phpredis//phpredis/commit/3159bd2),
  [567dc2f](https://www.github.com/phpredis//phpredis/commit/567dc2f), [daa4d9f](https://www.github.com/phpredis//phpredis/commit/daa4d9f),
  [f2711e3](https://www.github.com/phpredis//phpredis/commit/f2711e3), [9cb9d07](https://www.github.com/phpredis//phpredis/commit/9cb9d07),
  [d51c89](https://www.github.com/phpredis//phpredis/commit/d51c89), [9ff8f49](https://www.github.com/phpredis//phpredis/commit/9ff8f49),
  [33bb629](https://www.github.com/phpredis//phpredis/commit/33bb629), [cbdf65a](https://www.github.com/phpredis//phpredis/commit/cbdf65a),
  [f30b7fd](https://www.github.com/phpredis//phpredis/commit/f30b7fd), [c687a51](https://www.github.com/phpredis//phpredis/commit/c687a51),
  [6b3e773](https://www.github.com/phpredis//phpredis/commit/6b3e773), [2bf8241](https://www.github.com/phpredis//phpredis/commit/2bf8241),
  [71bd3d](https://www.github.com/phpredis//phpredis/commit/71bd3d), [9221ca4](https://www.github.com/phpredis//phpredis/commit/9221ca4),
  [4e00df6](https://www.github.com/phpredis//phpredis/commit/4e00df6), [e2407ca](https://www.github.com/phpredis//phpredis/commit/e2407ca),
  [97fcfe6](https://www.github.com/phpredis//phpredis/commit/97fcfe6), [77e6200](https://www.github.com/phpredis//phpredis/commit/77e6200)
  [Sean DuBois](https://github.com/Sean-Der)
- Redis Cluster support
- IPv6 support

### Changed

- Allow SINTERSTORE to take a single array argument again
- Exception handling improvement [Jan-E](https://github.com/Jan-E) [314a2c3c](https://www.github.com/phpredis//phpredis/commit/314a2c3c)
- Allow '-' and '+' in ZRANGEBYLEX [Patrick Pokatilo](https://github.com/SHyx0rmZ) [8bfa2188](https://www.github.com/phpredis//phpredis/commit/8bfa2188)

### Fixed

- config.w32 fix [Jan-E](https://github.com/Jan-E) [495d308](https://www.github.com/phpredis//phpredis/commit/495d308), [c9e0b682](https://www.github.com/phpredis//phpredis/commit/c9e0b682)
- Unit test fix for max int value [Jan-E](https://github.com/Jan-E) [659ea2aa](https://www.github.com/phpredis//phpredis/commit/659ea2aa)
- unsigned long -> zend_ulong fix [Jan-E](https://github.com/Jan-E) [4d66e3d4](https://www.github.com/phpredis//phpredis/commit/4d66e3d4)
- Visual Stuio 14 fixes [Jan-E](https://github.com/Jan-E) [ea98401c](https://www.github.com/phpredis//phpredis/commit/ea98401c)
- Segfault fix when looking up our socket [ephemeralsnow](https://github.com/ephemeralsnow) [0126481a](https://www.github.com/phpredis//phpredis/commit/0126481a)
- Documentation fixes [Ares](https://github.com/ares333) [54b9a0ec](https://www.github.com/phpredis//phpredis/commit/54b9a0ec)
- php7 related memory leak fix [Stuart Carnie](https://github.com/stuartcarnie) [b75bf3b4](https://www.github.com/phpredis//phpredis/commit/b75bf3b4)
- Potential segfault fix in cluster session [Sergei Lomakov](https://github.com/sapfeer0k) [661fb5b1](https://www.github.com/phpredis//phpredis/commit/661fb5b1)
- php7 related serialization leak fix (Adam Harvey) [c40fc1d8](https://www.github.com/phpredis//phpredis/commit/c40fc1d8)

---

## [2.2.8] - 2016-06-02 ([GitHub](https://github.com/phpredis/phpredis/releases/2.2.8), [PECL](https://pecl.php.net/package/redis/2.2.8))

The main improvement in this version of phpredis is support for Redis
Cluster.  This version of phpredis is intended for versions of php older
than 7.

### Added

- Added randomization to our seed nodes to balance which instance is used
  to map the keyspace [32eb1c5f](https://www.github.com/phpredis/phpredis/commit/32eb1c5f) (Vitaliy Stepanyuk)
- Added support for IPv6 addresses

### Fixed

- PHP liveness checking workaround (Shafreeck Sea) [c18d58b9](https://www.github.com/phpredis/phpredis/commit/c18d58b9)
- Various documentation and code formatting and style fixes ([ares333](https://github.com/ares333),
  [sanpili](https://github.com/sanpili), [Bryan Nelson](https://github.com/bplus), [linfangrong](https://github.com/linfangrong), [Romero Malaquias](https://github.com/RomeroMalaquias), [Viktor Szépe](https://github.com/szepeviktor))
- Fix scan reply processing to use long instead of int to avoid overflow
  [mixiaojiong](https://github.com/mixiaojiong)).
- Fix potential segfault in Redis Cluster session storage [cc15aae](https://www.github.com/phpredis/phpredis/commit/cc15aae)
  ([Sergei Lomakov](https://github.com/sapfeer0k)).
- Fixed memory leak in discard function [17b1f427](https://www.github.com/phpredis/phpredis/commit/17b1f427)
- Sanity check for igbinary unserialization
  [3266b222](https://www.github.com/phpredis/phpredis/commit/3266b222), [528297a](https://www.github.com/phpredis/phpredis/commit/528297a) ([Maurus Cuelenaere](https://github.com/mcuelenaere)).
- Fix segfault occuring from unclosed socket connection for Redis Cluster
  [04196aee](https://www.github.com/phpredis/phpredis/commit/04196aee) ([CatKang](https://github.com/CatKang))
- Case insensitive zRangeByScore options
- Fixed dreaded size_t vs long long compiler warning

---

## [2.2.7] - 2015-03-03 ([GitHub](https://github.com/phpredis/phpredis/releases/tag/2.2.7), [PECL](https://pecl.php.net/package/redis/2.2.7))

### Added

- Implemented PFADD, PFMERGE, and PFCOUNT command handling
- Implemented ZRANGEBYLEX command (holding off on ZREVRANGEBYLEX
  as that won't be out until 3.0)
- Implemented getMode() so clients can detect whether we're in
  ATOMIC/MULTI/PIPELINE mode.
- Implemented rawCommand() so clients can send arbitrary things to
  the redis server
- Implemented DEBUG OBJECT ([@michael-grunder](https://github.com/michael-grunder), [@isage](https://github.com/isage))
- Added/abide by connect timeout for RedisArray

### Fixed

- Select to the last selected DB when phpredis reconnects
- Fix a possible invalid free in \_serialize()
- Added SAVE and BGSAVE to "distributable" commands for RedisArray
- Fixed invalid "argc" calculation in HLL commands ([@welting](https://github.com/weltling))
- Allow clients to break out of the subscribe loop and return context.
- Fixes a memory leak in SCAN when OPT_SCAN_RETRY id.
- Fix possible segfault when igbinary is enabled ([@remicollet](https://github.com/remicollet)).
- Add a couple of cases where we throw on an error (LOADING/NOAUTH/MASTERDOWN)
- Fix several issues with serialization NARY
- Fix missing TSRMLS_CC and a TSRMLS_DC/TSRMLS_CC typo ([@itcom](https://github.com/itcom))

---

## [2.2.5] - 2014-03-15 ([GitHub](https://github.com/phpredis/phpredis/releases/tag/2.2.5), [PECL](https://pecl.php.net/package/redis/2.2.5))

### Added

- Support for the BITPOS command
- Connection timeout option for RedisArray ([@MiketoString](https://github.com/MiketoString))
- A \_serialize method, to complement our existing \_unserialize method
- Support for the PUBSUB command
- Support for SCAN, SSCAN, HSCAN, and ZSCAN
- Support for the WAIT command

### Fixed

- Handle the COPY and REPLACE arguments for the MIGRATE command
- Fix syntax error in documentation for the SET command ([@mithunsatheesh](https://github.com/mithunsatheesh))
- Fix Homebrew documentation instructions ([@mathias](https://github.com/mathiasverraes))

---

## [2.2.4] - 2013-09-01 ([GitHub](https://github.com/phpredis/phpredis/releases/tag/2.2.4), [PECL](https://pecl.php.net/package/redis/2.2.4))

### Added

- Randomized reconnect delay for RedisArray @mobli
- Lazy connections to RedisArray servers @mobli
- Allow LONG and STRING keys in MGET/MSET
- Extended SET options for Redis &gt;= 2.6.12
- Persistent connections and UNIX SOCKET support for RedisArray
- Allow aggregates for ZUNION/ZINTER without weights @mheijkoop
- Support for SLOWLOG command

### Changed
- Reworked MGET algorithm to run in linear time regardless of key count.
- Reworked ZINTERSTORE/ZUNIONSTORE algorithm to run in linear time

### Fixed

- C99 Compliance (or rather lack thereof) fix @mobli
- Added ZEND_ACC_CTOR and ZEND_ACC_DTOR [@euskadi31](https://github.com/euskadi31)
- Stop throwing and clearing an exception on connect failure @matmoi
- Fix a false positive unit test failure having to do with TTL returns
