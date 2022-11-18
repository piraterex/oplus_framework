.class public Landroid/mtp/MtpStorageManager$MtpObject;
.super Ljava/lang/Object;
.source "MtpStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MtpObject"
.end annotation


# instance fields
.field private greylist-max-o mChildren:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/mtp/MtpStorageManager$MtpObject;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mId:I

.field private greylist-max-o mIsDir:Z

.field private greylist-max-o mName:Ljava/lang/String;

.field private greylist-max-o mObserver:Landroid/os/FileObserver;

.field private greylist-max-o mOp:Landroid/mtp/MtpStorageManager$MtpOperation;

.field private greylist-max-o mParent:Landroid/mtp/MtpStorageManager$MtpObject;

.field private greylist-max-o mState:Landroid/mtp/MtpStorageManager$MtpObjectState;

.field private blacklist mStorage:Landroid/mtp/MtpStorage;

.field private greylist-max-o mVisited:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mChildren:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;
    .locals 0

    iget-object p0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mObserver:Landroid/os/FileObserver;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStorage(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorage;
    .locals 0

    iget-object p0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mStorage:Landroid/mtp/MtpStorage;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmObserver(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/os/FileObserver;)V
    .locals 0

    iput-object p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mObserver:Landroid/os/FileObserver;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddChild(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->addChild(Landroid/mtp/MtpStorageManager$MtpObject;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcopy(Landroid/mtp/MtpStorageManager$MtpObject;Z)Landroid/mtp/MtpStorageManager$MtpObject;
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->copy(Z)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mexists(Landroid/mtp/MtpStorageManager$MtpObject;)Z
    .locals 0

    invoke-direct {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->exists()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetChild(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getChild(Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;
    .locals 0

    invoke-direct {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getChildren()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;
    .locals 0

    invoke-direct {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getObserver()Landroid/os/FileObserver;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetOperation(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpOperation;
    .locals 0

    invoke-direct {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getOperation()Landroid/mtp/MtpStorageManager$MtpOperation;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetState(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;
    .locals 0

    invoke-direct {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getState()Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misVisited(Landroid/mtp/MtpStorageManager$MtpObject;)Z
    .locals 0

    invoke-direct {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->isVisited()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetDir(Landroid/mtp/MtpStorageManager$MtpObject;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->setDir(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetId(Landroid/mtp/MtpStorageManager$MtpObject;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->setId(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetName(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetObserver(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/os/FileObserver;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->setObserver(Landroid/os/FileObserver;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetOperation(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpOperation;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->setOperation(Landroid/mtp/MtpStorageManager$MtpOperation;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetParent(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->setParent(Landroid/mtp/MtpStorageManager$MtpObject;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->setState(Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetVisited(Landroid/mtp/MtpStorageManager$MtpObject;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->setVisited(Z)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;ILandroid/mtp/MtpStorage;Landroid/mtp/MtpStorageManager$MtpObject;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "storage"    # Landroid/mtp/MtpStorage;
    .param p4, "parent"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p5, "isDir"    # Z

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput p2, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mId:I

    .line 169
    iput-object p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mName:Ljava/lang/String;

    .line 170
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpStorage;

    iput-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mStorage:Landroid/mtp/MtpStorage;

    .line 171
    iput-object p4, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mParent:Landroid/mtp/MtpStorageManager$MtpObject;

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mObserver:Landroid/os/FileObserver;

    .line 173
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mVisited:Z

    .line 174
    sget-object v1, Landroid/mtp/MtpStorageManager$MtpObjectState;->NORMAL:Landroid/mtp/MtpStorageManager$MtpObjectState;

    iput-object v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mState:Landroid/mtp/MtpStorageManager$MtpObjectState;

    .line 175
    iput-boolean p5, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    .line 176
    sget-object v1, Landroid/mtp/MtpStorageManager$MtpOperation;->NONE:Landroid/mtp/MtpStorageManager$MtpOperation;

    iput-object v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mOp:Landroid/mtp/MtpStorageManager$MtpOperation;

    .line 178
    iget-boolean v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    iput-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mChildren:Ljava/util/HashMap;

    .line 179
    return-void
.end method

.method private greylist-max-o addChild(Landroid/mtp/MtpStorageManager$MtpObject;)V
    .locals 2
    .param p1, "child"    # Landroid/mtp/MtpStorageManager$MtpObject;

    .line 325
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mChildren:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    return-void
.end method

.method private greylist-max-o copy(Z)Landroid/mtp/MtpStorageManager$MtpObject;
    .locals 7
    .param p1, "recursive"    # Z

    .line 341
    new-instance v6, Landroid/mtp/MtpStorageManager$MtpObject;

    iget-object v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mName:Ljava/lang/String;

    iget v2, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mId:I

    iget-object v3, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mStorage:Landroid/mtp/MtpStorage;

    iget-object v4, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mParent:Landroid/mtp/MtpStorageManager$MtpObject;

    iget-boolean v5, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/mtp/MtpStorageManager$MtpObject;-><init>(Ljava/lang/String;ILandroid/mtp/MtpStorage;Landroid/mtp/MtpStorageManager$MtpObject;Z)V

    .line 342
    .local v0, "copy":Landroid/mtp/MtpStorageManager$MtpObject;
    iget-boolean v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    iput-boolean v1, v0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    .line 343
    iget-boolean v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mVisited:Z

    iput-boolean v1, v0, Landroid/mtp/MtpStorageManager$MtpObject;->mVisited:Z

    .line 344
    iget-object v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mState:Landroid/mtp/MtpStorageManager$MtpObjectState;

    iput-object v1, v0, Landroid/mtp/MtpStorageManager$MtpObject;->mState:Landroid/mtp/MtpStorageManager$MtpObjectState;

    .line 345
    iget-boolean v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Landroid/mtp/MtpStorageManager$MtpObject;->mChildren:Ljava/util/HashMap;

    .line 346
    if-eqz p1, :cond_1

    iget-boolean v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    if-eqz v1, :cond_1

    .line 347
    iget-object v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mChildren:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 348
    .local v2, "child":Landroid/mtp/MtpStorageManager$MtpObject;
    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/mtp/MtpStorageManager$MtpObject;->copy(Z)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v3

    .line 349
    .local v3, "childCopy":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-direct {v3, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->setParent(Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 350
    invoke-direct {v0, v3}, Landroid/mtp/MtpStorageManager$MtpObject;->addChild(Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 351
    .end local v2    # "child":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local v3    # "childCopy":Landroid/mtp/MtpStorageManager$MtpObject;
    goto :goto_1

    .line 353
    :cond_1
    return-object v0
.end method

.method private greylist-max-o exists()Z
    .locals 1

    .line 337
    invoke-virtual {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private greylist-max-o getChild(Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 329
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mChildren:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpStorageManager$MtpObject;

    return-object v0
.end method

.method private greylist-max-o getChildren()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/mtp/MtpStorageManager$MtpObject;",
            ">;"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mChildren:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getObserver()Landroid/os/FileObserver;
    .locals 1

    .line 317
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mObserver:Landroid/os/FileObserver;

    return-object v0
.end method

.method private greylist-max-o getOperation()Landroid/mtp/MtpStorageManager$MtpOperation;
    .locals 1

    .line 309
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mOp:Landroid/mtp/MtpStorageManager$MtpOperation;

    return-object v0
.end method

.method private greylist-max-o getState()Landroid/mtp/MtpStorageManager$MtpObjectState;
    .locals 1

    .line 299
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mState:Landroid/mtp/MtpStorageManager$MtpObjectState;

    return-object v0
.end method

.method private blacklist getStorage()Landroid/mtp/MtpStorage;
    .locals 1

    .line 284
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mStorage:Landroid/mtp/MtpStorage;

    return-object v0
.end method

.method private blacklist isFileTranscodeSupported()Z
    .locals 7

    .line 240
    invoke-virtual {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    .line 242
    .local v0, "path":Ljava/nio/file/Path;
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v2

    .line 243
    .local v2, "stat":Landroid/system/StructStat;
    iget-wide v3, v2, Landroid/system/StructStat;->st_nlink:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 244
    .end local v2    # "stat":Landroid/system/StructStat;
    :catch_0
    move-exception v2

    .line 245
    .local v2, "e":Landroid/system/ErrnoException;
    invoke-static {}, Landroid/mtp/MtpStorageManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to stat path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Ignoring transcoding."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return v1
.end method

.method private blacklist isTranscodeMtpEnabled()Z
    .locals 2

    .line 231
    const-string v0, "sys.fuse.transcode_mtp"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private greylist-max-o isVisited()Z
    .locals 1

    .line 273
    iget-boolean v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mVisited:Z

    return v0
.end method

.method private blacklist maybeApplyTranscodeLengthWorkaround(J)J
    .locals 2
    .param p1, "length"    # J

    .line 221
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mStorage:Landroid/mtp/MtpStorage;

    invoke-virtual {v0}, Landroid/mtp/MtpStorage;->isHostWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->isTranscodeMtpEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->isFileTranscodeSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    const-wide/16 v0, 0x2

    mul-long/2addr v0, p1

    return-wide v0

    .line 227
    :cond_0
    return-wide p1
.end method

.method private greylist-max-o setDir(Z)V
    .locals 1
    .param p1, "dir"    # Z

    .line 288
    iget-boolean v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    if-eq p1, v0, :cond_1

    .line 289
    iput-boolean p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    .line 290
    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mChildren:Ljava/util/HashMap;

    .line 292
    :cond_1
    return-void
.end method

.method private greylist-max-o setId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 269
    iput p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mId:I

    .line 270
    return-void
.end method

.method private greylist-max-o setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 265
    iput-object p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mName:Ljava/lang/String;

    .line 266
    return-void
.end method

.method private greylist-max-o setObserver(Landroid/os/FileObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/os/FileObserver;

    .line 321
    iput-object p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mObserver:Landroid/os/FileObserver;

    .line 322
    return-void
.end method

.method private greylist-max-o setOperation(Landroid/mtp/MtpStorageManager$MtpOperation;)V
    .locals 0
    .param p1, "op"    # Landroid/mtp/MtpStorageManager$MtpOperation;

    .line 313
    iput-object p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mOp:Landroid/mtp/MtpStorageManager$MtpOperation;

    .line 314
    return-void
.end method

.method private greylist-max-o setParent(Landroid/mtp/MtpStorageManager$MtpObject;)V
    .locals 2
    .param p1, "parent"    # Landroid/mtp/MtpStorageManager$MtpObject;

    .line 277
    invoke-virtual {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getStorageId()I

    move-result v0

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getStorageId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 278
    invoke-direct {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getStorage()Landroid/mtp/MtpStorage;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpStorage;

    iput-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mStorage:Landroid/mtp/MtpStorage;

    .line 280
    :cond_0
    iput-object p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mParent:Landroid/mtp/MtpStorageManager$MtpObject;

    .line 281
    return-void
.end method

.method private greylist-max-o setState(Landroid/mtp/MtpStorageManager$MtpObjectState;)V
    .locals 1
    .param p1, "state"    # Landroid/mtp/MtpStorageManager$MtpObjectState;

    .line 303
    iput-object p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mState:Landroid/mtp/MtpStorageManager$MtpObjectState;

    .line 304
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->NORMAL:Landroid/mtp/MtpStorageManager$MtpObjectState;

    if-ne p1, v0, :cond_0

    .line 305
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpOperation;->NONE:Landroid/mtp/MtpStorageManager$MtpOperation;

    iput-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mOp:Landroid/mtp/MtpStorageManager$MtpOperation;

    .line 306
    :cond_0
    return-void
.end method

.method private greylist-max-o setVisited(Z)V
    .locals 0
    .param p1, "visited"    # Z

    .line 295
    iput-boolean p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mVisited:Z

    .line 296
    return-void
.end method


# virtual methods
.method public greylist-max-o getFormat()I
    .locals 2

    .line 196
    iget-boolean v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x3001

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/MediaFile;->getFormatCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public greylist-max-o getId()I
    .locals 1

    .line 188
    iget v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mId:I

    return v0
.end method

.method public greylist-max-o getModifiedTime()J
    .locals 4

    .line 204
    invoke-virtual {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public greylist-max-o getName()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getParent()Landroid/mtp/MtpStorageManager$MtpObject;
    .locals 1

    .line 208
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mParent:Landroid/mtp/MtpStorageManager$MtpObject;

    return-object v0
.end method

.method public greylist-max-o getPath()Ljava/nio/file/Path;
    .locals 2

    .line 251
    invoke-virtual {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mName:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mParent:Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    iget-object v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public greylist-max-o getRoot()Landroid/mtp/MtpStorageManager$MtpObject;
    .locals 1

    .line 212
    invoke-virtual {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mParent:Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getRoot()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public greylist-max-o getSize()J
    .locals 2

    .line 216
    iget-boolean v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/mtp/MtpStorageManager$MtpObject;->maybeApplyTranscodeLengthWorkaround(J)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public greylist-max-o getStorageId()I
    .locals 1

    .line 200
    invoke-virtual {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getRoot()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v0

    return v0
.end method

.method public blacklist getVolumeName()Ljava/lang/String;
    .locals 1

    .line 259
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mStorage:Landroid/mtp/MtpStorage;

    invoke-virtual {v0}, Landroid/mtp/MtpStorage;->getVolumeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o isDir()Z
    .locals 1

    .line 192
    iget-boolean v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    return v0
.end method

.method public greylist-max-o isRoot()Z
    .locals 1

    .line 255
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mParent:Landroid/mtp/MtpStorageManager$MtpObject;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
