.class Landroid/mtp/MtpPropertyGroup;
.super Ljava/lang/Object;
.source "MtpPropertyGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpPropertyGroup$Property;
    }
.end annotation


# static fields
.field private static final greylist-max-o PATH_WHERE:Ljava/lang/String; = "_data=?"

.field private static final greylist-max-o TAG:Ljava/lang/String;


# instance fields
.field private greylist-max-o mColumns:[Ljava/lang/String;

.field private final greylist-max-o mProperties:[Landroid/mtp/MtpPropertyGroup$Property;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 35
    const-class v0, Landroid/mtp/MtpPropertyGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/mtp/MtpPropertyGroup;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>([I)V
    .locals 5
    .param p1, "properties"    # [I

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    array-length v0, p1

    .line 60
    .local v0, "count":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    .local v1, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    new-array v2, v0, [Landroid/mtp/MtpPropertyGroup$Property;

    iput-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    .line 64
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 65
    iget-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    aget v4, p1, v2

    invoke-direct {p0, v4, v1}, Landroid/mtp/MtpPropertyGroup;->createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;

    move-result-object v4

    aput-object v4, v3, v2

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 68
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    .line 69
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 70
    iget-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v3, v2

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 72
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private greylist-max-o createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;
    .locals 5
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/mtp/MtpPropertyGroup$Property;"
        }
    .end annotation

    .line 75
    .local p2, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 78
    .local v0, "column":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 160
    const/4 v1, 0x0

    .line 161
    .local v1, "type":I
    sget-object v2, Landroid/mtp/MtpPropertyGroup;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unsupported property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 152
    .end local v1    # "type":I
    :sswitch_0
    const/4 v1, 0x6

    .line 153
    .restart local v1    # "type":I
    goto/16 :goto_0

    .line 157
    .end local v1    # "type":I
    :sswitch_1
    const/4 v1, 0x4

    .line 158
    .restart local v1    # "type":I
    goto :goto_0

    .line 122
    .end local v1    # "type":I
    :sswitch_2
    const v1, 0xffff

    .line 123
    .restart local v1    # "type":I
    goto :goto_0

    .line 133
    .end local v1    # "type":I
    :sswitch_3
    const-string v0, "album_artist"

    .line 134
    const v1, 0xffff

    .line 135
    .restart local v1    # "type":I
    goto :goto_0

    .line 129
    .end local v1    # "type":I
    :sswitch_4
    const-string v0, "album"

    .line 130
    const v1, 0xffff

    .line 131
    .restart local v1    # "type":I
    goto :goto_0

    .line 104
    .end local v1    # "type":I
    :sswitch_5
    const-string/jumbo v0, "year"

    .line 105
    const v1, 0xffff

    .line 106
    .restart local v1    # "type":I
    goto :goto_0

    .line 141
    .end local v1    # "type":I
    :sswitch_6
    const-string v0, "composer"

    .line 142
    const v1, 0xffff

    .line 143
    .restart local v1    # "type":I
    goto :goto_0

    .line 137
    .end local v1    # "type":I
    :sswitch_7
    const-string v0, "genre"

    .line 138
    const v1, 0xffff

    .line 139
    .restart local v1    # "type":I
    goto :goto_0

    .line 118
    .end local v1    # "type":I
    :sswitch_8
    const-string/jumbo v0, "track"

    .line 119
    const/4 v1, 0x4

    .line 120
    .restart local v1    # "type":I
    goto :goto_0

    .line 114
    .end local v1    # "type":I
    :sswitch_9
    const-string v0, "duration"

    .line 115
    const/4 v1, 0x6

    .line 116
    .restart local v1    # "type":I
    goto :goto_0

    .line 101
    .end local v1    # "type":I
    :sswitch_a
    const v1, 0xffff

    .line 102
    .restart local v1    # "type":I
    goto :goto_0

    .line 145
    .end local v1    # "type":I
    :sswitch_b
    const-string v0, "description"

    .line 146
    const v1, 0xffff

    .line 147
    .restart local v1    # "type":I
    goto :goto_0

    .line 125
    .end local v1    # "type":I
    :sswitch_c
    const-string v0, "artist"

    .line 126
    const v1, 0xffff

    .line 127
    .restart local v1    # "type":I
    goto :goto_0

    .line 95
    .end local v1    # "type":I
    :sswitch_d
    const v1, 0xffff

    .line 96
    .restart local v1    # "type":I
    goto :goto_0

    .line 111
    .end local v1    # "type":I
    :sswitch_e
    const/16 v1, 0xa

    .line 112
    .restart local v1    # "type":I
    goto :goto_0

    .line 108
    .end local v1    # "type":I
    :sswitch_f
    const/4 v1, 0x6

    .line 109
    .restart local v1    # "type":I
    goto :goto_0

    .line 98
    .end local v1    # "type":I
    :sswitch_10
    const v1, 0xffff

    .line 99
    .restart local v1    # "type":I
    goto :goto_0

    .line 92
    .end local v1    # "type":I
    :sswitch_11
    const v1, 0xffff

    .line 93
    .restart local v1    # "type":I
    goto :goto_0

    .line 89
    .end local v1    # "type":I
    :sswitch_12
    const/16 v1, 0x8

    .line 90
    .restart local v1    # "type":I
    goto :goto_0

    .line 86
    .end local v1    # "type":I
    :sswitch_13
    const/4 v1, 0x4

    .line 87
    .restart local v1    # "type":I
    goto :goto_0

    .line 83
    .end local v1    # "type":I
    :sswitch_14
    const/4 v1, 0x4

    .line 84
    .restart local v1    # "type":I
    goto :goto_0

    .line 80
    .end local v1    # "type":I
    :sswitch_15
    const/4 v1, 0x6

    .line 81
    .restart local v1    # "type":I
    nop

    .line 165
    :goto_0
    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v2, Landroid/mtp/MtpPropertyGroup$Property;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    return-object v2

    .line 169
    :cond_0
    new-instance v2, Landroid/mtp/MtpPropertyGroup$Property;

    const/4 v3, -0x1

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0xdc01 -> :sswitch_15
        0xdc02 -> :sswitch_14
        0xdc03 -> :sswitch_13
        0xdc04 -> :sswitch_12
        0xdc07 -> :sswitch_11
        0xdc09 -> :sswitch_10
        0xdc0b -> :sswitch_f
        0xdc41 -> :sswitch_e
        0xdc44 -> :sswitch_d
        0xdc46 -> :sswitch_c
        0xdc48 -> :sswitch_b
        0xdc4e -> :sswitch_a
        0xdc89 -> :sswitch_9
        0xdc8b -> :sswitch_8
        0xdc8c -> :sswitch_7
        0xdc96 -> :sswitch_6
        0xdc99 -> :sswitch_5
        0xdc9a -> :sswitch_4
        0xdc9b -> :sswitch_3
        0xdce0 -> :sswitch_2
        0xde92 -> :sswitch_1
        0xde93 -> :sswitch_0
        0xde94 -> :sswitch_1
        0xde99 -> :sswitch_0
        0xde9a -> :sswitch_0
    .end sparse-switch
.end method

.method private native greylist-max-o format_date_time(J)Ljava/lang/String;
.end method


# virtual methods
.method public blacklist getPropertyList(Landroid/content/ContentProviderClient;Ljava/lang/String;Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpPropertyList;)I
    .locals 23
    .param p1, "provider"    # Landroid/content/ContentProviderClient;
    .param p2, "volumeName"    # Ljava/lang/String;
    .param p3, "object"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p4, "list"    # Landroid/mtp/MtpPropertyList;

    .line 180
    move-object/from16 v1, p0

    move-object/from16 v8, p4

    const/4 v0, 0x0

    .line 181
    .local v0, "c":Landroid/database/Cursor;
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v9

    .line 182
    .local v9, "id":I
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v10

    .line 183
    .local v10, "path":Ljava/lang/String;
    iget-object v11, v1, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v12, v11

    const/4 v13, 0x0

    move-object v2, v0

    move v14, v13

    .end local v0    # "c":Landroid/database/Cursor;
    .local v2, "c":Landroid/database/Cursor;
    :goto_0
    if-ge v14, v12, :cond_7

    aget-object v15, v11, v14

    .line 184
    .local v15, "property":Landroid/mtp/MtpPropertyGroup$Property;
    iget v0, v15, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-nez v2, :cond_1

    .line 187
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v6, p2

    :try_start_1
    invoke-static {v0, v6}, Landroid/mtp/MtpDatabase;->getObjectPropertiesUri(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 189
    .local v17, "uri":Landroid/net/Uri;
    iget-object v0, v1, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    const-string v19, "_data=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object v10, v3, v13

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, p1

    move-object/from16 v18, v0

    move-object/from16 v20, v3

    invoke-virtual/range {v16 .. v22}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    .line 191
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 193
    const/4 v2, 0x0

    .line 199
    .end local v17    # "uri":Landroid/net/Uri;
    :cond_0
    move-object v0, v2

    goto :goto_3

    .line 197
    :catch_0
    move-exception v0

    goto :goto_1

    .line 195
    :catch_1
    move-exception v0

    goto :goto_2

    .line 197
    :catch_2
    move-exception v0

    move-object/from16 v6, p2

    .line 198
    .local v0, "e":Landroid/os/RemoteException;
    :goto_1
    sget-object v3, Landroid/mtp/MtpPropertyGroup;->TAG:Ljava/lang/String;

    const-string v4, "Mediaprovider lookup failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    goto :goto_3

    .line 195
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_3
    move-exception v0

    move-object/from16 v6, p2

    .line 196
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    const v3, 0xa801

    return v3

    .line 184
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    move-object/from16 v6, p2

    .line 201
    move-object v0, v2

    .end local v2    # "c":Landroid/database/Cursor;
    .local v0, "c":Landroid/database/Cursor;
    :goto_3
    iget v2, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    sparse-switch v2, :sswitch_data_0

    .line 264
    iget v2, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    sparse-switch v2, :sswitch_data_1

    .line 275
    const-wide/16 v2, 0x0

    .line 276
    .local v2, "longValue":J
    if-eqz v0, :cond_6

    .line 277
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-wide/from16 v16, v2

    goto/16 :goto_6

    .line 256
    .end local v2    # "longValue":J
    :sswitch_0
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    const/4 v5, 0x6

    const-wide/16 v16, 0x0

    move-object/from16 v2, p4

    move v3, v9

    move-wide/from16 v6, v16

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 257
    goto/16 :goto_7

    .line 261
    :sswitch_1
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    const/4 v5, 0x4

    const-wide/16 v6, 0x0

    move-object/from16 v2, p4

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 262
    goto/16 :goto_7

    .line 239
    :sswitch_2
    const/4 v2, 0x0

    .line 240
    .local v2, "year":I
    if-eqz v0, :cond_2

    .line 241
    iget v3, v15, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 242
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0101T000000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 243
    .local v3, "dateTime":Ljava/lang/String;
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    invoke-virtual {v8, v9, v4, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 244
    goto/16 :goto_7

    .line 246
    .end local v2    # "year":I
    .end local v3    # "dateTime":Ljava/lang/String;
    :sswitch_3
    const/4 v2, 0x0

    .line 247
    .local v2, "track":I
    if-eqz v0, :cond_3

    .line 248
    iget v3, v15, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move v6, v2

    goto :goto_4

    .line 247
    :cond_3
    move v6, v2

    .line 249
    .end local v2    # "track":I
    .local v6, "track":I
    :goto_4
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    const/4 v5, 0x4

    rem-int/lit16 v2, v6, 0x3e8

    int-to-long v2, v2

    move-wide/from16 v16, v2

    move-object/from16 v2, p4

    move v3, v9

    move/from16 v18, v6

    .end local v6    # "track":I
    .local v18, "track":I
    move-wide/from16 v6, v16

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 251
    goto/16 :goto_7

    .line 233
    .end local v18    # "track":I
    :sswitch_4
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    shl-int/lit8 v2, v2, 0x20

    int-to-long v2, v2

    .line 234
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getModifiedTime()J

    move-result-wide v4

    add-long v16, v2, v4

    .line 235
    .local v16, "puid":J
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move-object/from16 v2, p4

    move v3, v9

    move-wide/from16 v6, v16

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 236
    goto/16 :goto_7

    .line 227
    .end local v16    # "puid":J
    :sswitch_5
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    .line 228
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v2

    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v2

    if-eqz v2, :cond_4

    const-wide/16 v2, 0x0

    goto :goto_5

    :cond_4
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v2

    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v2

    int-to-long v2, v2

    :goto_5
    move-wide v6, v2

    .line 227
    move-object/from16 v2, p4

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 229
    goto/16 :goto_7

    .line 214
    :sswitch_6
    iget v2, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    .line 215
    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getModifiedTime()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Landroid/mtp/MtpPropertyGroup;->format_date_time(J)Ljava/lang/String;

    move-result-object v3

    .line 214
    invoke-virtual {v8, v9, v2, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 216
    goto/16 :goto_7

    .line 209
    :sswitch_7
    iget v2, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v9, v2, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 210
    goto/16 :goto_7

    .line 224
    :sswitch_8
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getSize()J

    move-result-wide v6

    move-object/from16 v2, p4

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 225
    goto :goto_7

    .line 204
    :sswitch_9
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    const-wide/16 v6, 0x0

    move-object/from16 v2, p4

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 205
    goto :goto_7

    .line 221
    :sswitch_a
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v2

    int-to-long v6, v2

    move-object/from16 v2, p4

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 222
    goto :goto_7

    .line 218
    :sswitch_b
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    invoke-virtual/range {p3 .. p3}, Landroid/mtp/MtpStorageManager$MtpObject;->getStorageId()I

    move-result v2

    int-to-long v6, v2

    move-object/from16 v2, p4

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 219
    goto :goto_7

    .line 269
    :sswitch_c
    const-string v2, ""

    .line 270
    .local v2, "value":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 271
    iget v3, v15, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 272
    :cond_5
    iget v3, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    invoke-virtual {v8, v9, v3, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 273
    goto :goto_7

    .line 266
    .end local v2    # "value":Ljava/lang/String;
    :sswitch_d
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    const-wide/16 v6, 0x0

    move-object/from16 v2, p4

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 267
    goto :goto_7

    .line 276
    .local v2, "longValue":J
    :cond_6
    move-wide/from16 v16, v2

    .line 278
    .end local v2    # "longValue":J
    .local v16, "longValue":J
    :goto_6
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move-object/from16 v2, p4

    move v3, v9

    move-wide/from16 v6, v16

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    .line 183
    .end local v15    # "property":Landroid/mtp/MtpPropertyGroup$Property;
    .end local v16    # "longValue":J
    :goto_7
    add-int/lit8 v14, v14, 0x1

    move-object v2, v0

    goto/16 :goto_0

    .line 282
    .end local v0    # "c":Landroid/database/Cursor;
    .local v2, "c":Landroid/database/Cursor;
    :cond_7
    if-eqz v2, :cond_8

    .line 283
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 284
    :cond_8
    const/16 v0, 0x2001

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xdc01 -> :sswitch_b
        0xdc02 -> :sswitch_a
        0xdc03 -> :sswitch_9
        0xdc04 -> :sswitch_8
        0xdc07 -> :sswitch_7
        0xdc09 -> :sswitch_6
        0xdc0b -> :sswitch_5
        0xdc41 -> :sswitch_4
        0xdc44 -> :sswitch_7
        0xdc4e -> :sswitch_6
        0xdc8b -> :sswitch_3
        0xdc99 -> :sswitch_2
        0xdce0 -> :sswitch_7
        0xde92 -> :sswitch_1
        0xde93 -> :sswitch_0
        0xde94 -> :sswitch_1
        0xde99 -> :sswitch_0
        0xde9a -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_d
        0xffff -> :sswitch_c
    .end sparse-switch
.end method
