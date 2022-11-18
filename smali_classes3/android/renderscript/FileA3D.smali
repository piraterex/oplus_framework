.class public Landroid/renderscript/FileA3D;
.super Landroid/renderscript/BaseObj;
.source "FileA3D.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/FileA3D$IndexEntry;,
        Landroid/renderscript/FileA3D$EntryType;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field greylist-max-o mFileEntries:[Landroid/renderscript/FileA3D$IndexEntry;

.field greylist-max-o mInputStream:Ljava/io/InputStream;


# direct methods
.method constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;Ljava/io/InputStream;)V
    .locals 2
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;
    .param p4, "stream"    # Ljava/io/InputStream;

    .line 176
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 177
    iput-object p4, p0, Landroid/renderscript/FileA3D;->mInputStream:Ljava/io/InputStream;

    .line 178
    iget-object v0, p0, Landroid/renderscript/FileA3D;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "destroy"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public static greylist-max-o createFromAsset(Landroid/renderscript/RenderScript;Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/renderscript/FileA3D;
    .locals 5
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "mgr"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;

    .line 239
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 240
    invoke-virtual {p0, p1, p2}, Landroid/renderscript/RenderScript;->nFileA3DCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)J

    move-result-wide v0

    .line 242
    .local v0, "fileId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 245
    new-instance v2, Landroid/renderscript/FileA3D;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, p0, v3}, Landroid/renderscript/FileA3D;-><init>(JLandroid/renderscript/RenderScript;Ljava/io/InputStream;)V

    .line 246
    .local v2, "fa3d":Landroid/renderscript/FileA3D;
    invoke-direct {v2}, Landroid/renderscript/FileA3D;->initEntries()V

    .line 247
    return-object v2

    .line 243
    .end local v2    # "fa3d":Landroid/renderscript/FileA3D;
    :cond_0
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create a3d file from asset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static greylist-max-o createFromFile(Landroid/renderscript/RenderScript;Ljava/io/File;)Landroid/renderscript/FileA3D;
    .locals 1
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "path"    # Ljava/io/File;

    .line 280
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/renderscript/FileA3D;->createFromFile(Landroid/renderscript/RenderScript;Ljava/lang/String;)Landroid/renderscript/FileA3D;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o createFromFile(Landroid/renderscript/RenderScript;Ljava/lang/String;)Landroid/renderscript/FileA3D;
    .locals 5
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "path"    # Ljava/lang/String;

    .line 260
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScript;->nFileA3DCreateFromFile(Ljava/lang/String;)J

    move-result-wide v0

    .line 262
    .local v0, "fileId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 265
    new-instance v2, Landroid/renderscript/FileA3D;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, p0, v3}, Landroid/renderscript/FileA3D;-><init>(JLandroid/renderscript/RenderScript;Ljava/io/InputStream;)V

    .line 266
    .local v2, "fa3d":Landroid/renderscript/FileA3D;
    invoke-direct {v2}, Landroid/renderscript/FileA3D;->initEntries()V

    .line 267
    return-object v2

    .line 263
    .end local v2    # "fa3d":Landroid/renderscript/FileA3D;
    :cond_0
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create a3d file from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static greylist createFromResource(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)Landroid/renderscript/FileA3D;
    .locals 6
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I

    .line 296
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 297
    const/4 v0, 0x0

    .line 299
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 302
    nop

    .line 304
    const-wide/16 v1, 0x0

    .line 305
    .local v1, "fileId":J
    instance-of v3, v0, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v3, :cond_1

    .line 306
    move-object v3, v0

    check-cast v3, Landroid/content/res/AssetManager$AssetInputStream;

    invoke-virtual {v3}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    move-result-wide v3

    .line 307
    .local v3, "asset":J
    invoke-virtual {p0, v3, v4}, Landroid/renderscript/RenderScript;->nFileA3DCreateFromAssetStream(J)J

    move-result-wide v1

    .line 308
    .end local v3    # "asset":J
    nop

    .line 312
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 315
    new-instance v3, Landroid/renderscript/FileA3D;

    invoke-direct {v3, v1, v2, p0, v0}, Landroid/renderscript/FileA3D;-><init>(JLandroid/renderscript/RenderScript;Ljava/io/InputStream;)V

    .line 316
    .local v3, "fa3d":Landroid/renderscript/FileA3D;
    invoke-direct {v3}, Landroid/renderscript/FileA3D;->initEntries()V

    .line 317
    return-object v3

    .line 313
    .end local v3    # "fa3d":Landroid/renderscript/FileA3D;
    :cond_0
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create a3d file from resource "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 309
    :cond_1
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Unsupported asset stream"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 300
    .end local v1    # "fileId":J
    :catch_0
    move-exception v1

    .line 301
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open resource "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private greylist-max-o initEntries()V
    .locals 13

    .line 182
    iget-object v0, p0, Landroid/renderscript/FileA3D;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/FileA3D;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/FileA3D;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/RenderScript;->nFileA3DGetNumIndexEntries(J)I

    move-result v0

    .line 183
    .local v0, "numFileEntries":I
    if-gtz v0, :cond_0

    .line 184
    return-void

    .line 187
    :cond_0
    new-array v1, v0, [Landroid/renderscript/FileA3D$IndexEntry;

    iput-object v1, p0, Landroid/renderscript/FileA3D;->mFileEntries:[Landroid/renderscript/FileA3D$IndexEntry;

    .line 188
    new-array v1, v0, [I

    .line 189
    .local v1, "ids":[I
    new-array v2, v0, [Ljava/lang/String;

    .line 191
    .local v2, "names":[Ljava/lang/String;
    iget-object v3, p0, Landroid/renderscript/FileA3D;->mRS:Landroid/renderscript/RenderScript;

    iget-object v4, p0, Landroid/renderscript/FileA3D;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v4}, Landroid/renderscript/FileA3D;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    move v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Landroid/renderscript/RenderScript;->nFileA3DGetIndexEntries(JI[I[Ljava/lang/String;)V

    .line 193
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 194
    iget-object v11, p0, Landroid/renderscript/FileA3D;->mFileEntries:[Landroid/renderscript/FileA3D$IndexEntry;

    new-instance v12, Landroid/renderscript/FileA3D$IndexEntry;

    iget-object v5, p0, Landroid/renderscript/FileA3D;->mRS:Landroid/renderscript/RenderScript;

    iget-object v4, p0, Landroid/renderscript/FileA3D;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v4}, Landroid/renderscript/FileA3D;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v7

    aget-object v9, v2, v3

    aget v4, v1, v3

    invoke-static {v4}, Landroid/renderscript/FileA3D$EntryType;->toEntryType(I)Landroid/renderscript/FileA3D$EntryType;

    move-result-object v10

    move-object v4, v12

    move v6, v3

    invoke-direct/range {v4 .. v10}, Landroid/renderscript/FileA3D$IndexEntry;-><init>(Landroid/renderscript/RenderScript;IJLjava/lang/String;Landroid/renderscript/FileA3D$EntryType;)V

    aput-object v12, v11, v3

    .line 193
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 196
    .end local v3    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public greylist getIndexEntry(I)Landroid/renderscript/FileA3D$IndexEntry;
    .locals 2
    .param p1, "index"    # I

    .line 222
    invoke-virtual {p0}, Landroid/renderscript/FileA3D;->getIndexEntryCount()I

    move-result v0

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Landroid/renderscript/FileA3D;->mFileEntries:[Landroid/renderscript/FileA3D$IndexEntry;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    aget-object v0, v0, p1

    return-object v0

    .line 223
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getIndexEntryCount()I
    .locals 1

    .line 205
    iget-object v0, p0, Landroid/renderscript/FileA3D;->mFileEntries:[Landroid/renderscript/FileA3D$IndexEntry;

    if-nez v0, :cond_0

    .line 206
    const/4 v0, 0x0

    return v0

    .line 208
    :cond_0
    array-length v0, v0

    return v0
.end method
