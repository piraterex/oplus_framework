.class public abstract Landroid/provider/DocumentsProvider;
.super Landroid/content/ContentProvider;
.source "DocumentsProvider.java"


# static fields
.field private static final greylist-max-o MATCH_CHILDREN:I = 0x6

.field private static final greylist-max-o MATCH_CHILDREN_TREE:I = 0x8

.field private static final greylist-max-o MATCH_DOCUMENT:I = 0x5

.field private static final greylist-max-o MATCH_DOCUMENT_TREE:I = 0x7

.field private static final greylist-max-o MATCH_RECENT:I = 0x3

.field private static final greylist-max-o MATCH_ROOT:I = 0x2

.field private static final greylist-max-o MATCH_ROOTS:I = 0x1

.field private static final greylist-max-o MATCH_SEARCH:I = 0x4

.field private static final greylist-max-o TAG:Ljava/lang/String; = "DocumentsProvider"


# instance fields
.field private greylist-max-o mAuthority:Ljava/lang/String;

.field private greylist-max-o mMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 145
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private greylist-max-o callUnchecked(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 20
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1087
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1088
    .local v3, "context":Landroid/content/Context;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1091
    .local v4, "out":Landroid/os/Bundle;
    invoke-direct {v0, v2}, Landroid/provider/DocumentsProvider;->enforceTreeForExtraUris(Landroid/os/Bundle;)V

    .line 1093
    nop

    .line 1094
    const-string/jumbo v5, "uri"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 1093
    invoke-direct {v0, v6}, Landroid/provider/DocumentsProvider;->validateIncomingNullableUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    .line 1095
    .local v6, "extraUri":Landroid/net/Uri;
    nop

    .line 1096
    const-string v7, "android.content.extra.TARGET_URI"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 1095
    invoke-direct {v0, v7}, Landroid/provider/DocumentsProvider;->validateIncomingNullableUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    .line 1097
    .local v7, "extraTargetUri":Landroid/net/Uri;
    nop

    .line 1098
    const-string/jumbo v8, "parentUri"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 1097
    invoke-direct {v0, v8}, Landroid/provider/DocumentsProvider;->validateIncomingNullableUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v8

    .line 1100
    .local v8, "extraParentUri":Landroid/net/Uri;
    const-string v9, "android:ejectRoot"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1104
    move-object v5, v6

    .line 1105
    .local v5, "rootUri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingAttributionSource()Landroid/content/AttributionSource;

    move-result-object v9

    invoke-virtual {v0, v5, v9}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    .line 1107
    invoke-static {v5}, Landroid/provider/DocumentsContract;->getRootId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    .line 1108
    .local v9, "rootId":Ljava/lang/String;
    invoke-virtual {v0, v9}, Landroid/provider/DocumentsProvider;->ejectRoot(Ljava/lang/String;)V

    .line 1110
    return-object v4

    .line 1113
    .end local v5    # "rootUri":Landroid/net/Uri;
    .end local v9    # "rootId":Ljava/lang/String;
    :cond_0
    move-object v9, v6

    .line 1114
    .local v9, "documentUri":Landroid/net/Uri;
    invoke-virtual {v9}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v10

    .line 1115
    .local v10, "authority":Ljava/lang/String;
    invoke-static {v9}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    .line 1117
    .local v11, "documentId":Ljava/lang/String;
    iget-object v12, v0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_17

    .line 1122
    const-string v12, "android:isChildDocument"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string/jumbo v15, "result"

    if-eqz v12, :cond_2

    .line 1123
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingAttributionSource()Landroid/content/AttributionSource;

    move-result-object v5

    invoke-virtual {v0, v9, v5}, Landroid/provider/DocumentsProvider;->enforceReadPermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    .line 1125
    move-object v5, v7

    .line 1126
    .local v5, "childUri":Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v12

    .line 1127
    .local v12, "childAuthority":Ljava/lang/String;
    invoke-static {v5}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v13

    .line 1129
    .local v13, "childId":Ljava/lang/String;
    iget-object v14, v0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    .line 1131
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1132
    invoke-virtual {v0, v11, v13}, Landroid/provider/DocumentsProvider;->isChildDocument(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v14, 0x1

    goto :goto_0

    :cond_1
    const/4 v14, 0x0

    .line 1129
    :goto_0
    invoke-virtual {v4, v15, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1134
    .end local v5    # "childUri":Landroid/net/Uri;
    .end local v12    # "childAuthority":Ljava/lang/String;
    .end local v13    # "childId":Ljava/lang/String;
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    goto/16 :goto_8

    :cond_2
    const-string v12, "android:createDocument"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string v13, "_display_name"

    if-eqz v12, :cond_3

    .line 1135
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingAttributionSource()Landroid/content/AttributionSource;

    move-result-object v12

    invoke-virtual {v0, v9, v12}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    .line 1137
    const-string/jumbo v12, "mime_type"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1138
    .local v12, "mimeType":Ljava/lang/String;
    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1139
    .local v13, "displayName":Ljava/lang/String;
    invoke-virtual {v0, v11, v12, v13}, Landroid/provider/DocumentsProvider;->createDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1144
    .local v14, "newDocumentId":Ljava/lang/String;
    invoke-static {v9, v14}, Landroid/provider/DocumentsContract;->buildDocumentUriMaybeUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 1146
    .local v15, "newDocumentUri":Landroid/net/Uri;
    invoke-virtual {v4, v5, v15}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1148
    .end local v12    # "mimeType":Ljava/lang/String;
    .end local v13    # "displayName":Ljava/lang/String;
    .end local v14    # "newDocumentId":Ljava/lang/String;
    .end local v15    # "newDocumentUri":Landroid/net/Uri;
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    goto/16 :goto_8

    :cond_3
    const-string v12, "android:createWebLinkIntent"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1149
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingAttributionSource()Landroid/content/AttributionSource;

    move-result-object v5

    invoke-virtual {v0, v9, v5}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    .line 1151
    const-string/jumbo v5, "options"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 1152
    .local v5, "options":Landroid/os/Bundle;
    invoke-virtual {v0, v11, v5}, Landroid/provider/DocumentsProvider;->createWebLinkIntent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/IntentSender;

    move-result-object v12

    .line 1154
    .local v12, "intentSender":Landroid/content/IntentSender;
    invoke-virtual {v4, v15, v12}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1156
    .end local v5    # "options":Landroid/os/Bundle;
    .end local v12    # "intentSender":Landroid/content/IntentSender;
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    goto/16 :goto_8

    :cond_4
    const-string v12, "android:renameDocument"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1157
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingAttributionSource()Landroid/content/AttributionSource;

    move-result-object v12

    invoke-virtual {v0, v9, v12}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    .line 1159
    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1160
    .local v12, "displayName":Ljava/lang/String;
    invoke-virtual {v0, v11, v12}, Landroid/provider/DocumentsProvider;->renameDocument(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1162
    .local v13, "newDocumentId":Ljava/lang/String;
    if-eqz v13, :cond_6

    .line 1163
    invoke-static {v9, v13}, Landroid/provider/DocumentsContract;->buildDocumentUriMaybeUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 1168
    .local v14, "newDocumentUri":Landroid/net/Uri;
    invoke-static {v14}, Landroid/provider/DocumentsContract;->isTreeUri(Landroid/net/Uri;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 1169
    invoke-static {v3, v9}, Landroid/provider/DocumentsProvider;->getCallingOrSelfUriPermissionModeFlags(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v15

    .line 1171
    .local v15, "modeFlags":I
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v14, v15}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 1174
    .end local v15    # "modeFlags":I
    :cond_5
    invoke-virtual {v4, v5, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1177
    invoke-virtual {v0, v11}, Landroid/provider/DocumentsProvider;->revokeDocumentPermission(Ljava/lang/String;)V

    .line 1180
    .end local v12    # "displayName":Ljava/lang/String;
    .end local v13    # "newDocumentId":Ljava/lang/String;
    .end local v14    # "newDocumentUri":Landroid/net/Uri;
    :cond_6
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    goto/16 :goto_8

    :cond_7
    const-string v2, "android:deleteDocument"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1181
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    .line 1182
    invoke-virtual {v0, v11}, Landroid/provider/DocumentsProvider;->deleteDocument(Ljava/lang/String;)V

    .line 1185
    invoke-virtual {v0, v11}, Landroid/provider/DocumentsProvider;->revokeDocumentPermission(Ljava/lang/String;)V

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    goto/16 :goto_8

    .line 1187
    :cond_8
    const-string v2, "android:copyDocument"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1188
    move-object v2, v7

    .line 1189
    .local v2, "targetUri":Landroid/net/Uri;
    invoke-static {v2}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v12

    .line 1191
    .local v12, "targetId":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingAttributionSource()Landroid/content/AttributionSource;

    move-result-object v13

    invoke-virtual {v0, v9, v13}, Landroid/provider/DocumentsProvider;->enforceReadPermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    .line 1192
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingAttributionSource()Landroid/content/AttributionSource;

    move-result-object v13

    invoke-virtual {v0, v2, v13}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    .line 1194
    invoke-virtual {v0, v11, v12}, Landroid/provider/DocumentsProvider;->copyDocument(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1196
    .restart local v13    # "newDocumentId":Ljava/lang/String;
    if-eqz v13, :cond_a

    .line 1197
    invoke-static {v9, v13}, Landroid/provider/DocumentsContract;->buildDocumentUriMaybeUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 1200
    .restart local v14    # "newDocumentUri":Landroid/net/Uri;
    invoke-static {v14}, Landroid/provider/DocumentsContract;->isTreeUri(Landroid/net/Uri;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 1201
    invoke-static {v3, v9}, Landroid/provider/DocumentsProvider;->getCallingOrSelfUriPermissionModeFlags(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v15

    .line 1203
    .restart local v15    # "modeFlags":I
    move-object/from16 v16, v2

    .end local v2    # "targetUri":Landroid/net/Uri;
    .local v16, "targetUri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v14, v15}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_1

    .line 1200
    .end local v15    # "modeFlags":I
    .end local v16    # "targetUri":Landroid/net/Uri;
    .restart local v2    # "targetUri":Landroid/net/Uri;
    :cond_9
    move-object/from16 v16, v2

    .line 1206
    .end local v2    # "targetUri":Landroid/net/Uri;
    .restart local v16    # "targetUri":Landroid/net/Uri;
    :goto_1
    invoke-virtual {v4, v5, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_2

    .line 1196
    .end local v14    # "newDocumentUri":Landroid/net/Uri;
    .end local v16    # "targetUri":Landroid/net/Uri;
    .restart local v2    # "targetUri":Landroid/net/Uri;
    :cond_a
    move-object/from16 v16, v2

    .line 1209
    .end local v2    # "targetUri":Landroid/net/Uri;
    .end local v12    # "targetId":Ljava/lang/String;
    .end local v13    # "newDocumentId":Ljava/lang/String;
    :goto_2
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    goto/16 :goto_8

    :cond_b
    const-string v2, "android:moveDocument"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1210
    move-object v2, v8

    .line 1211
    .local v2, "parentSourceUri":Landroid/net/Uri;
    invoke-static {v2}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v12

    .line 1212
    .local v12, "parentSourceId":Ljava/lang/String;
    move-object v13, v7

    .line 1213
    .local v13, "targetUri":Landroid/net/Uri;
    invoke-static {v13}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v14

    .line 1215
    .local v14, "targetId":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingAttributionSource()Landroid/content/AttributionSource;

    move-result-object v15

    invoke-virtual {v0, v9, v15}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    .line 1216
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingAttributionSource()Landroid/content/AttributionSource;

    move-result-object v15

    invoke-virtual {v0, v2, v15}, Landroid/provider/DocumentsProvider;->enforceReadPermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    .line 1217
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingAttributionSource()Landroid/content/AttributionSource;

    move-result-object v15

    invoke-virtual {v0, v13, v15}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    .line 1219
    invoke-virtual {v0, v11, v12, v14}, Landroid/provider/DocumentsProvider;->moveDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1221
    .local v15, "newDocumentId":Ljava/lang/String;
    if-eqz v15, :cond_d

    .line 1222
    move-object/from16 v16, v2

    .end local v2    # "parentSourceUri":Landroid/net/Uri;
    .local v16, "parentSourceUri":Landroid/net/Uri;
    invoke-static {v9, v15}, Landroid/provider/DocumentsContract;->buildDocumentUriMaybeUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1225
    .local v2, "newDocumentUri":Landroid/net/Uri;
    invoke-static {v2}, Landroid/provider/DocumentsContract;->isTreeUri(Landroid/net/Uri;)Z

    move-result v17

    if-nez v17, :cond_c

    .line 1226
    move-object/from16 v18, v6

    .end local v6    # "extraUri":Landroid/net/Uri;
    .local v18, "extraUri":Landroid/net/Uri;
    invoke-static {v3, v9}, Landroid/provider/DocumentsProvider;->getCallingOrSelfUriPermissionModeFlags(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v6

    .line 1228
    .local v6, "modeFlags":I
    move-object/from16 v19, v7

    .end local v7    # "extraTargetUri":Landroid/net/Uri;
    .local v19, "extraTargetUri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v2, v6}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_3

    .line 1225
    .end local v18    # "extraUri":Landroid/net/Uri;
    .end local v19    # "extraTargetUri":Landroid/net/Uri;
    .local v6, "extraUri":Landroid/net/Uri;
    .restart local v7    # "extraTargetUri":Landroid/net/Uri;
    :cond_c
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .line 1231
    .end local v6    # "extraUri":Landroid/net/Uri;
    .end local v7    # "extraTargetUri":Landroid/net/Uri;
    .restart local v18    # "extraUri":Landroid/net/Uri;
    .restart local v19    # "extraTargetUri":Landroid/net/Uri;
    :goto_3
    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_4

    .line 1221
    .end local v16    # "parentSourceUri":Landroid/net/Uri;
    .end local v18    # "extraUri":Landroid/net/Uri;
    .end local v19    # "extraTargetUri":Landroid/net/Uri;
    .local v2, "parentSourceUri":Landroid/net/Uri;
    .restart local v6    # "extraUri":Landroid/net/Uri;
    .restart local v7    # "extraTargetUri":Landroid/net/Uri;
    :cond_d
    move-object/from16 v16, v2

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .line 1234
    .end local v2    # "parentSourceUri":Landroid/net/Uri;
    .end local v6    # "extraUri":Landroid/net/Uri;
    .end local v7    # "extraTargetUri":Landroid/net/Uri;
    .end local v12    # "parentSourceId":Ljava/lang/String;
    .end local v13    # "targetUri":Landroid/net/Uri;
    .end local v14    # "targetId":Ljava/lang/String;
    .end local v15    # "newDocumentId":Ljava/lang/String;
    .restart local v18    # "extraUri":Landroid/net/Uri;
    .restart local v19    # "extraTargetUri":Landroid/net/Uri;
    :goto_4
    goto/16 :goto_8

    .end local v18    # "extraUri":Landroid/net/Uri;
    .end local v19    # "extraTargetUri":Landroid/net/Uri;
    .restart local v6    # "extraUri":Landroid/net/Uri;
    .restart local v7    # "extraTargetUri":Landroid/net/Uri;
    :cond_e
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .end local v6    # "extraUri":Landroid/net/Uri;
    .end local v7    # "extraTargetUri":Landroid/net/Uri;
    .restart local v18    # "extraUri":Landroid/net/Uri;
    .restart local v19    # "extraTargetUri":Landroid/net/Uri;
    const-string v2, "android:removeDocument"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1235
    move-object v2, v8

    .line 1236
    .restart local v2    # "parentSourceUri":Landroid/net/Uri;
    invoke-static {v2}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 1238
    .local v5, "parentSourceId":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingAttributionSource()Landroid/content/AttributionSource;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Landroid/provider/DocumentsProvider;->enforceReadPermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    .line 1239
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingAttributionSource()Landroid/content/AttributionSource;

    move-result-object v6

    invoke-virtual {v0, v9, v6}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    .line 1240
    invoke-virtual {v0, v11, v5}, Landroid/provider/DocumentsProvider;->removeDocument(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    .end local v2    # "parentSourceUri":Landroid/net/Uri;
    .end local v5    # "parentSourceId":Ljava/lang/String;
    goto/16 :goto_8

    :cond_f
    const-string v2, "android:findDocumentPath"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1245
    invoke-static {v9}, Landroid/provider/DocumentsContract;->isTreeUri(Landroid/net/Uri;)Z

    move-result v2

    .line 1247
    .local v2, "isTreeUri":Z
    const/4 v5, 0x0

    if-eqz v2, :cond_10

    .line 1248
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingAttributionSource()Landroid/content/AttributionSource;

    move-result-object v6

    invoke-virtual {v0, v9, v6}, Landroid/provider/DocumentsProvider;->enforceReadPermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    goto :goto_5

    .line 1250
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "android.permission.MANAGE_DOCUMENTS"

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    :goto_5
    if-eqz v2, :cond_11

    .line 1254
    invoke-static {v9}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    .line 1255
    :cond_11
    move-object v6, v5

    :goto_6
    nop

    .line 1257
    .local v6, "parentDocumentId":Ljava/lang/String;
    invoke-virtual {v0, v6, v11}, Landroid/provider/DocumentsProvider;->findDocumentPath(Ljava/lang/String;Ljava/lang/String;)Landroid/provider/DocumentsContract$Path;

    move-result-object v7

    .line 1260
    .local v7, "path":Landroid/provider/DocumentsContract$Path;
    if-eqz v2, :cond_14

    .line 1261
    invoke-virtual {v7}, Landroid/provider/DocumentsContract$Path;->getPath()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    const-string v13, "DocumentsProvider"

    if-nez v12, :cond_13

    .line 1262
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Provider doesn\'t return path from the tree root. Expected: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " found: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1263
    invoke-virtual {v7}, Landroid/provider/DocumentsContract$Path;->getPath()Ljava/util/List;

    move-result-object v14

    const/4 v5, 0x0

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1262
    invoke-static {v13, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    new-instance v5, Ljava/util/LinkedList;

    invoke-virtual {v7}, Landroid/provider/DocumentsContract$Path;->getPath()Ljava/util/List;

    move-result-object v12

    invoke-direct {v5, v12}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 1266
    .local v5, "docs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :goto_7
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v12

    const/4 v14, 0x1

    if-le v12, v14, :cond_12

    invoke-virtual {v5}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_12

    .line 1267
    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_7

    .line 1269
    :cond_12
    new-instance v12, Landroid/provider/DocumentsContract$Path;

    const/4 v14, 0x0

    invoke-direct {v12, v14, v5}, Landroid/provider/DocumentsContract$Path;-><init>(Ljava/lang/String;Ljava/util/List;)V

    move-object v7, v12

    .line 1272
    .end local v5    # "docs":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_13
    invoke-virtual {v7}, Landroid/provider/DocumentsContract$Path;->getRootId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_14

    .line 1273
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Provider returns root id :"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1274
    invoke-virtual {v7}, Landroid/provider/DocumentsContract$Path;->getRootId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " unexpectedly. Erase root id."

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1273
    invoke-static {v13, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    new-instance v5, Landroid/provider/DocumentsContract$Path;

    invoke-virtual {v7}, Landroid/provider/DocumentsContract$Path;->getPath()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v5, v13, v12}, Landroid/provider/DocumentsContract$Path;-><init>(Ljava/lang/String;Ljava/util/List;)V

    move-object v7, v5

    .line 1279
    :cond_14
    invoke-virtual {v4, v15, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1280
    .end local v2    # "isTreeUri":Z
    .end local v6    # "parentDocumentId":Ljava/lang/String;
    .end local v7    # "path":Landroid/provider/DocumentsContract$Path;
    nop

    .line 1286
    :goto_8
    return-object v4

    .line 1280
    :cond_15
    const-string v2, "android:getDocumentMetadata"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1281
    invoke-virtual {v0, v11}, Landroid/provider/DocumentsProvider;->getDocumentMetadata(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    return-object v2

    .line 1283
    :cond_16
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Method not supported "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1118
    .end local v18    # "extraUri":Landroid/net/Uri;
    .end local v19    # "extraTargetUri":Landroid/net/Uri;
    .local v6, "extraUri":Landroid/net/Uri;
    .local v7, "extraTargetUri":Landroid/net/Uri;
    :cond_17
    move-object/from16 v18, v6

    .end local v6    # "extraUri":Landroid/net/Uri;
    .restart local v18    # "extraUri":Landroid/net/Uri;
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requested authority "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " doesn\'t match provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private greylist-max-o enforceTree(Landroid/net/Uri;)V
    .locals 5
    .param p1, "documentUri"    # Landroid/net/Uri;

    .line 229
    if-eqz p1, :cond_2

    invoke-static {p1}, Landroid/provider/DocumentsContract;->isTreeUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 230
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "parent":Ljava/lang/String;
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "child":Ljava/lang/String;
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    return-void

    .line 235
    :cond_0
    invoke-virtual {p0, v0, v1}, Landroid/provider/DocumentsProvider;->isChildDocument(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 236
    :cond_1
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Document "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a descendant of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 240
    .end local v0    # "parent":Ljava/lang/String;
    .end local v1    # "child":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist enforceTreeForExtraUris(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 222
    const-string/jumbo v0, "uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-direct {p0, v0}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    .line 223
    const-string/jumbo v0, "parentUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-direct {p0, v0}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    .line 224
    const-string v0, "android.content.extra.TARGET_URI"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-direct {p0, v0}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    .line 225
    return-void
.end method

.method private static greylist-max-o getCallingOrSelfUriPermissionModeFlags(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1014
    const/4 v0, 0x0

    .line 1015
    .local v0, "modeFlags":I
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 1017
    or-int/lit8 v0, v0, 0x1

    .line 1019
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 1021
    or-int/lit8 v0, v0, 0x2

    .line 1023
    :cond_1
    const/16 v1, 0x41

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v1

    if-nez v1, :cond_2

    .line 1026
    or-int/lit8 v0, v0, 0x40

    .line 1028
    :cond_2
    return v0
.end method

.method private static greylist-max-o getSortClause(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .param p0, "queryArgs"    # Landroid/os/Bundle;

    .line 947
    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :goto_0
    move-object p0, v0

    .line 948
    const-string v0, "android:query-arg-sql-sort-order"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 950
    .local v0, "sortClause":Ljava/lang/String;
    if-nez v0, :cond_1

    const-string v1, "android:query-arg-sort-columns"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 951
    invoke-static {p0}, Landroid/content/ContentResolver;->createSqlSortClause(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 954
    :cond_1
    return-object v0
.end method

.method private final greylist-max-o openTypedAssetFileImpl(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1436
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    .line 1437
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1438
    .local v0, "documentId":Ljava/lang/String;
    if-eqz p3, :cond_0

    const-string v1, "android.content.extra.SIZE"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1439
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 1440
    .local v1, "sizeHint":Landroid/graphics/Point;
    invoke-virtual {p0, v0, v1, p4}, Landroid/provider/DocumentsProvider;->openDocumentThumbnail(Ljava/lang/String;Landroid/graphics/Point;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    return-object v2

    .line 1442
    .end local v1    # "sizeHint":Landroid/graphics/Point;
    :cond_0
    const-string v1, "*/*"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "r"

    if-eqz v1, :cond_1

    .line 1444
    invoke-virtual {p0, p1, v2}, Landroid/provider/DocumentsProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    return-object v1

    .line 1446
    :cond_1
    invoke-virtual {p0, p1}, Landroid/provider/DocumentsProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1447
    .local v1, "baseType":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-static {v1, p2}, Landroid/content/ClipDescription;->compareMimeTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1450
    invoke-virtual {p0, p1, v2}, Landroid/provider/DocumentsProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    return-object v2

    .line 1453
    :cond_2
    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/provider/DocumentsProvider;->openTypedDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    return-object v2
.end method

.method private greylist-max-o registerAuthority(Ljava/lang/String;)V
    .locals 4
    .param p1, "authority"    # Ljava/lang/String;

    .line 192
    iput-object p1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    .line 194
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    .line 195
    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "root"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 196
    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "root/*"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 197
    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "root/*/recent"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 198
    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "root/*/search"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 199
    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "document/*"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 200
    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    const-string v2, "document/*/children"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 201
    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "tree/*/document/*"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 202
    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "tree/*/document/*/children"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 203
    return-void
.end method

.method private blacklist validateIncomingNullableUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 243
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/provider/DocumentsProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public whitelist attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    .line 166
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/provider/DocumentsProvider;->registerAuthority(Ljava/lang/String;)V

    .line 169
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    if-eqz v0, :cond_2

    .line 172
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    const-string v1, "android.permission.MANAGE_DOCUMENTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 176
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 181
    return-void

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Provider must be protected by MANAGE_DOCUMENTS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Provider must grantUriPermissions"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Provider must be exported"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o attachInfoForTesting(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    .line 186
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/provider/DocumentsProvider;->registerAuthority(Ljava/lang/String;)V

    .line 188
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfoForTesting(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 189
    return-void
.end method

.method public whitelist call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 1072
    const-string v0, "android:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1074
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 1078
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/provider/DocumentsProvider;->callUnchecked(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1079
    :catch_0
    move-exception v0

    .line 1080
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Landroid/os/ParcelableException;

    invoke-direct {v1, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist canonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 996
    invoke-virtual {p0}, Landroid/provider/DocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 997
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1009
    const/4 v1, 0x0

    return-object v1

    .line 999
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    .line 1001
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/DocumentsContract;->buildDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1005
    .local v1, "narrowUri":Landroid/net/Uri;
    invoke-static {v0, p1}, Landroid/provider/DocumentsProvider;->getCallingOrSelfUriPermissionModeFlags(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v2

    .line 1006
    .local v2, "modeFlags":I
    invoke-virtual {p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 1007
    return-object v1

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist copyDocument(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "sourceDocumentId"    # Ljava/lang/String;
    .param p2, "targetParentDocumentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 329
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Copy not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist createDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "parentDocumentId"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "displayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 267
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Create not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist createWebLinkIntent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/IntentSender;
    .locals 2
    .param p1, "documentId"    # Ljava/lang/String;
    .param p2, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 435
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "createWebLink is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 1050
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Delete not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist deleteDocument(Ljava/lang/String;)V
    .locals 2
    .param p1, "documentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 309
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Delete not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist ejectRoot(Ljava/lang/String;)V
    .locals 2
    .param p1, "rootId"    # Ljava/lang/String;

    .line 732
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Eject not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist findDocumentPath(Ljava/lang/String;Ljava/lang/String;)Landroid/provider/DocumentsContract$Path;
    .locals 2
    .param p1, "parentDocumentId"    # Ljava/lang/String;
    .param p2, "childDocumentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 403
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "findDocumentPath not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDocumentMetadata(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p1, "documentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 759
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Metadata not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDocumentStreamTypes(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p1, "documentId"    # Ljava/lang/String;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;

    .line 1393
    const/4 v0, 0x0

    .line 1395
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/provider/DocumentsProvider;->queryDocument(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    .line 1396
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1397
    const-string/jumbo v2, "mime_type"

    .line 1398
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1399
    .local v2, "mimeType":Ljava/lang/String;
    const-string v3, "flags"

    .line 1400
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1401
    .local v3, "flags":J
    const-wide/16 v5, 0x200

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    if-eqz v2, :cond_0

    .line 1402
    invoke-static {v2, p2}, Landroid/content/MimeTypeFilter;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1403
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1409
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1403
    return-object v5

    .line 1409
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v3    # "flags":J
    :cond_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1410
    nop

    .line 1413
    return-object v1

    .line 1409
    :catchall_0
    move-exception v1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1410
    throw v1

    .line 1406
    :catch_0
    move-exception v2

    .line 1407
    .local v2, "e":Ljava/io/FileNotFoundException;
    nop

    .line 1409
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1407
    return-object v1
.end method

.method public whitelist getDocumentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "documentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 773
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/provider/DocumentsProvider;->queryDocument(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 775
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 776
    const-string/jumbo v0, "mime_type"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 781
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 776
    return-object v0

    .line 778
    :cond_0
    nop

    .line 781
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 778
    return-object v0

    .line 781
    :catchall_0
    move-exception v0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 782
    throw v0
.end method

.method public whitelist getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;

    .line 1426
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    .line 1427
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/provider/DocumentsProvider;->getDocumentStreamTypes(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 965
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 973
    return-object v0

    .line 970
    :sswitch_0
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    .line 971
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/provider/DocumentsProvider;->getDocumentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 967
    :sswitch_1
    const-string/jumbo v0, "vnd.android.document/root"
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 975
    :catch_0
    move-exception v1

    .line 976
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v2, "DocumentsProvider"

    const-string v3, "Failed during getType"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 977
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x5 -> :sswitch_0
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public final whitelist insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 1039
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Insert not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isChildDocument(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "parentDocumentId"    # Ljava/lang/String;
    .param p2, "documentId"    # Ljava/lang/String;

    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist moveDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "sourceDocumentId"    # Ljava/lang/String;
    .param p2, "sourceParentDocumentId"    # Ljava/lang/String;
    .param p3, "targetParentDocumentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 355
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Move not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1333
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    .line 1334
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Landroid/provider/DocumentsProvider;->openDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1335
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x1

    move-object v2, v1

    move-object v3, v0

    invoke-direct/range {v2 .. v7}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    :cond_0
    return-object v1
.end method

.method public final whitelist openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1347
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    .line 1348
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/provider/DocumentsProvider;->openDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1349
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_0

    new-instance v7, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v3, 0x0

    const-wide/16 v5, -0x1

    move-object v1, v7

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    return-object v7
.end method

.method public abstract whitelist openDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public whitelist openDocumentThumbnail(Ljava/lang/String;Landroid/graphics/Point;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 2
    .param p1, "documentId"    # Ljava/lang/String;
    .param p2, "sizeHint"    # Landroid/graphics/Point;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 843
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Thumbnails not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1308
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    .line 1309
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Landroid/provider/DocumentsProvider;->openDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1320
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    .line 1321
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/provider/DocumentsProvider;->openDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1362
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/provider/DocumentsProvider;->openTypedAssetFileImpl(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1376
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/provider/DocumentsProvider;->openTypedAssetFileImpl(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist openTypedDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 2
    .param p1, "documentId"    # Ljava/lang/String;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 871
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "The requested MIME type is not supported."

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "queryArgs"    # Landroid/os/Bundle;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 913
    :try_start_0
    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 938
    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    goto :goto_0

    .line 927
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    .line 928
    invoke-static {p1}, Landroid/provider/DocumentsContract;->isManageMode(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 930
    nop

    .line 931
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 933
    invoke-static {p3}, Landroid/provider/DocumentsProvider;->getSortClause(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 930
    invoke-virtual {p0, v0, p2, v1}, Landroid/provider/DocumentsProvider;->queryChildDocumentsForManage(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 935
    :cond_0
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/provider/DocumentsProvider;->queryChildDocuments(Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 923
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    .line 924
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/provider/DocumentsProvider;->queryDocument(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 920
    :pswitch_3
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getRootId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/provider/DocumentsProvider;->querySearchDocuments(Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 917
    :pswitch_4
    nop

    .line 918
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getRootId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 917
    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/provider/DocumentsProvider;->queryRecentDocuments(Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 915
    :pswitch_5
    invoke-virtual {p0, p2}, Landroid/provider/DocumentsProvider;->queryRoots([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 938
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported Uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/provider/DocumentsProvider;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "projection":[Ljava/lang/String;
    .end local p3    # "queryArgs":Landroid/os/Bundle;
    .end local p4    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 940
    .restart local p0    # "this":Landroid/provider/DocumentsProvider;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "projection":[Ljava/lang/String;
    .restart local p3    # "queryArgs":Landroid/os/Bundle;
    .restart local p4    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catch_0
    move-exception v0

    .line 941
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "DocumentsProvider"

    const-string v2, "Failed during query"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 942
    const/4 v1, 0x0

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final whitelist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 879
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Pre-Android-O query format not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 897
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Pre-Android-O query format not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist queryChildDocuments(Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;
    .locals 1
    .param p1, "parentDocumentId"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "queryArgs"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 618
    nop

    .line 619
    invoke-static {p3}, Landroid/provider/DocumentsProvider;->getSortClause(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 618
    invoke-virtual {p0, p1, p2, v0}, Landroid/provider/DocumentsProvider;->queryChildDocuments(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist queryChildDocuments(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public greylist-max-o queryChildDocumentsForManage(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p1, "parentDocumentId"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 627
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Manage not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist queryDocument(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public whitelist queryRecentDocuments(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p1, "rootId"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 474
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Recent not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist queryRecentDocuments(Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 4
    .param p1, "rootId"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "queryArgs"    # Landroid/os/Bundle;
    .param p4, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 507
    const-string/jumbo v0, "rootId can not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    invoke-virtual {p0, p1, p2}, Landroid/provider/DocumentsProvider;->queryRecentDocuments(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 510
    .local v0, "c":Landroid/database/Cursor;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 511
    .local v1, "extras":Landroid/os/Bundle;
    invoke-interface {v0, v1}, Landroid/database/Cursor;->setExtras(Landroid/os/Bundle;)V

    .line 512
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "android.content.extra.HONORED_ARGS"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 513
    return-object v0
.end method

.method public abstract whitelist queryRoots([Ljava/lang/String;)Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public whitelist querySearchDocuments(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p1, "rootId"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "projection"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 668
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Search not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist querySearchDocuments(Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;
    .locals 1
    .param p1, "rootId"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "queryArgs"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 718
    const-string/jumbo v0, "rootId can not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    const-string/jumbo v0, "queryArgs can not be null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    invoke-static {p3}, Landroid/provider/DocumentsContract;->getSearchDocumentsQuery(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/provider/DocumentsProvider;->querySearchDocuments(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist removeDocument(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "documentId"    # Ljava/lang/String;
    .param p2, "parentDocumentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 376
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Remove not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist renameDocument(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "documentId"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 290
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Rename not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist revokeDocumentPermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "documentId"    # Ljava/lang/String;

    .line 1296
    invoke-virtual {p0}, Landroid/provider/DocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1297
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/provider/DocumentsContract;->buildDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 1298
    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/provider/DocumentsContract;->buildTreeDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 1299
    return-void
.end method

.method public final whitelist update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 1060
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Update not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
