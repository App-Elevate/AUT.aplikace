// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freezed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GithubReleaseImpl _$$GithubReleaseImplFromJson(Map<String, dynamic> json) =>
    _$GithubReleaseImpl(
      url: json['url'] as String,
      assetsUrl: json['assets_url'] as String,
      uploadUrl: json['upload_url'] as String,
      htmlUrl: json['html_url'] as String,
      id: (json['id'] as num).toInt(),
      assets: (json['assets'] as List<dynamic>)
          .map((e) => GithubAsset.fromJson(e as Map<String, dynamic>))
          .toList(),
      author: GithubAuthor.fromJson(json['author'] as Map<String, dynamic>),
      nodeId: json['node_id'] as String,
      tagName: json['tag_name'] as String,
      targetCommitish: json['target_commitish'] as String,
      name: json['name'] as String,
      draft: json['draft'] as bool,
      prerelease: json['prerelease'] as bool,
      createdAt: DateTime.parse(json['created_at'] as String),
      publishedAt: DateTime.parse(json['published_at'] as String),
      tarballUrl: json['tarball_url'] as String,
      zipballUrl: json['zipball_url'] as String,
      body: json['body'] as String,
    );

Map<String, dynamic> _$$GithubReleaseImplToJson(_$GithubReleaseImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'assets_url': instance.assetsUrl,
      'upload_url': instance.uploadUrl,
      'html_url': instance.htmlUrl,
      'id': instance.id,
      'assets': instance.assets,
      'author': instance.author,
      'node_id': instance.nodeId,
      'tag_name': instance.tagName,
      'target_commitish': instance.targetCommitish,
      'name': instance.name,
      'draft': instance.draft,
      'prerelease': instance.prerelease,
      'created_at': instance.createdAt.toIso8601String(),
      'published_at': instance.publishedAt.toIso8601String(),
      'tarball_url': instance.tarballUrl,
      'zipball_url': instance.zipballUrl,
      'body': instance.body,
    };

_$GithubAuthorImpl _$$GithubAuthorImplFromJson(Map<String, dynamic> json) =>
    _$GithubAuthorImpl(
      login: json['login'] as String,
      id: (json['id'] as num).toInt(),
      nodeId: json['node_id'] as String,
      avatarUrl: json['avatar_url'] as String,
      gravatarId: json['gravatar_id'] as String,
      url: json['url'] as String,
      htmlUrl: json['html_url'] as String,
      followersUrl: json['followers_url'] as String,
      followingUrl: json['following_url'] as String,
      gistsUrl: json['gists_url'] as String,
      starredUrl: json['starred_url'] as String,
      subscriptionsUrl: json['subscriptions_url'] as String,
      organizationsUrl: json['organizations_url'] as String,
      reposUrl: json['repos_url'] as String,
      eventsUrl: json['events_url'] as String,
      receivedEventsUrl: json['received_events_url'] as String,
      type: json['type'] as String,
      siteAdmin: json['site_admin'] as bool,
    );

Map<String, dynamic> _$$GithubAuthorImplToJson(_$GithubAuthorImpl instance) =>
    <String, dynamic>{
      'login': instance.login,
      'id': instance.id,
      'node_id': instance.nodeId,
      'avatar_url': instance.avatarUrl,
      'gravatar_id': instance.gravatarId,
      'url': instance.url,
      'html_url': instance.htmlUrl,
      'followers_url': instance.followersUrl,
      'following_url': instance.followingUrl,
      'gists_url': instance.gistsUrl,
      'starred_url': instance.starredUrl,
      'subscriptions_url': instance.subscriptionsUrl,
      'organizations_url': instance.organizationsUrl,
      'repos_url': instance.reposUrl,
      'events_url': instance.eventsUrl,
      'received_events_url': instance.receivedEventsUrl,
      'type': instance.type,
      'site_admin': instance.siteAdmin,
    };

_$GithubAssetImpl _$$GithubAssetImplFromJson(Map<String, dynamic> json) =>
    _$GithubAssetImpl(
      url: json['url'] as String,
      id: (json['id'] as num).toInt(),
      nodeId: json['node_id'] as String,
      name: json['name'] as String,
      label: json['label'] as String?,
      uploader:
          GithubUploader.fromJson(json['uploader'] as Map<String, dynamic>),
      contentType: json['content_type'] as String,
      state: json['state'] as String,
      size: (json['size'] as num).toInt(),
      downloadCount: (json['download_count'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      browserDownloadUrl: json['browser_download_url'] as String,
    );

Map<String, dynamic> _$$GithubAssetImplToJson(_$GithubAssetImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'id': instance.id,
      'node_id': instance.nodeId,
      'name': instance.name,
      'label': instance.label,
      'uploader': instance.uploader,
      'content_type': instance.contentType,
      'state': instance.state,
      'size': instance.size,
      'download_count': instance.downloadCount,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'browser_download_url': instance.browserDownloadUrl,
    };

_$GithubUploaderImpl _$$GithubUploaderImplFromJson(Map<String, dynamic> json) =>
    _$GithubUploaderImpl(
      login: json['login'] as String,
      id: (json['id'] as num).toInt(),
      nodeId: json['node_id'] as String,
      avatarUrl: json['avatar_url'] as String,
      gravatarId: json['gravatar_id'] as String,
      url: json['url'] as String,
      htmlUrl: json['html_url'] as String,
      followersUrl: json['followers_url'] as String,
      followingUrl: json['following_url'] as String,
      gistsUrl: json['gists_url'] as String,
      starredUrl: json['starred_url'] as String,
      subscriptionsUrl: json['subscriptions_url'] as String,
      organizationsUrl: json['organizations_url'] as String,
      reposUrl: json['repos_url'] as String,
      eventsUrl: json['events_url'] as String,
      receivedEventsUrl: json['received_events_url'] as String,
      type: json['type'] as String,
      siteAdmin: json['site_admin'] as bool,
    );

Map<String, dynamic> _$$GithubUploaderImplToJson(
        _$GithubUploaderImpl instance) =>
    <String, dynamic>{
      'login': instance.login,
      'id': instance.id,
      'node_id': instance.nodeId,
      'avatar_url': instance.avatarUrl,
      'gravatar_id': instance.gravatarId,
      'url': instance.url,
      'html_url': instance.htmlUrl,
      'followers_url': instance.followersUrl,
      'following_url': instance.followingUrl,
      'gists_url': instance.gistsUrl,
      'starred_url': instance.starredUrl,
      'subscriptions_url': instance.subscriptionsUrl,
      'organizations_url': instance.organizationsUrl,
      'repos_url': instance.reposUrl,
      'events_url': instance.eventsUrl,
      'received_events_url': instance.receivedEventsUrl,
      'type': instance.type,
      'site_admin': instance.siteAdmin,
    };
