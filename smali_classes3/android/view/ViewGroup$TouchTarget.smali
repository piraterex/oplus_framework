.class final Landroid/view/ViewGroup$TouchTarget;
.super Ljava/lang/Object;
.source "ViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TouchTarget"
.end annotation


# static fields
.field public static final greylist-max-o ALL_POINTER_IDS:I = -0x1

.field private static final greylist-max-o MAX_RECYCLED:I = 0x20

.field private static greylist-max-o sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

.field private static final greylist-max-o sRecycleLock:Ljava/lang/Object;

.field private static greylist-max-o sRecycledCount:I


# instance fields
.field public greylist child:Landroid/view/View;

.field public greylist-max-o next:Landroid/view/ViewGroup$TouchTarget;

.field public greylist-max-o pointerIdBits:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 8921
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/view/ViewGroup$TouchTarget;->sRecycleLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor greylist <init>()V
    .locals 0

    .line 8938
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8939
    return-void
.end method

.method public static greylist-max-o obtain(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;
    .locals 3
    .param p0, "child"    # Landroid/view/View;
    .param p1, "pointerIdBits"    # I

    .line 8942
    if-eqz p0, :cond_1

    .line 8947
    sget-object v0, Landroid/view/ViewGroup$TouchTarget;->sRecycleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8948
    :try_start_0
    sget-object v1, Landroid/view/ViewGroup$TouchTarget;->sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

    if-nez v1, :cond_0

    .line 8949
    new-instance v1, Landroid/view/ViewGroup$TouchTarget;

    invoke-direct {v1}, Landroid/view/ViewGroup$TouchTarget;-><init>()V

    .local v1, "target":Landroid/view/ViewGroup$TouchTarget;
    goto :goto_0

    .line 8951
    .end local v1    # "target":Landroid/view/ViewGroup$TouchTarget;
    :cond_0
    nop

    .line 8952
    .restart local v1    # "target":Landroid/view/ViewGroup$TouchTarget;
    iget-object v2, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    sput-object v2, Landroid/view/ViewGroup$TouchTarget;->sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

    .line 8953
    sget v2, Landroid/view/ViewGroup$TouchTarget;->sRecycledCount:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Landroid/view/ViewGroup$TouchTarget;->sRecycledCount:I

    .line 8954
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 8956
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8957
    iput-object p0, v1, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    .line 8958
    iput p1, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 8959
    return-object v1

    .line 8956
    .end local v1    # "target":Landroid/view/ViewGroup$TouchTarget;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 8943
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "child must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public greylist-max-o recycle()V
    .locals 4

    .line 8963
    iget-object v0, p0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 8967
    sget-object v0, Landroid/view/ViewGroup$TouchTarget;->sRecycleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8968
    :try_start_0
    sget v1, Landroid/view/ViewGroup$TouchTarget;->sRecycledCount:I

    const/16 v2, 0x20

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    .line 8969
    sget-object v2, Landroid/view/ViewGroup$TouchTarget;->sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

    iput-object v2, p0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 8970
    sput-object p0, Landroid/view/ViewGroup$TouchTarget;->sRecycleBin:Landroid/view/ViewGroup$TouchTarget;

    .line 8971
    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/view/ViewGroup$TouchTarget;->sRecycledCount:I

    goto :goto_0

    .line 8973
    :cond_0
    iput-object v3, p0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 8975
    :goto_0
    iput-object v3, p0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    .line 8976
    monitor-exit v0

    .line 8977
    return-void

    .line 8976
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8964
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already recycled once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
