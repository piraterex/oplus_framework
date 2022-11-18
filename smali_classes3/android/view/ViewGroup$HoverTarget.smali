.class final Landroid/view/ViewGroup$HoverTarget;
.super Ljava/lang/Object;
.source "ViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HoverTarget"
.end annotation


# static fields
.field private static final greylist-max-o MAX_RECYCLED:I = 0x20

.field private static greylist-max-o sRecycleBin:Landroid/view/ViewGroup$HoverTarget;

.field private static final greylist-max-o sRecycleLock:Ljava/lang/Object;

.field private static greylist-max-o sRecycledCount:I


# instance fields
.field public greylist-max-o child:Landroid/view/View;

.field public greylist-max-o next:Landroid/view/ViewGroup$HoverTarget;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 8983
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/view/ViewGroup$HoverTarget;->sRecycleLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 8993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8994
    return-void
.end method

.method public static greylist-max-o obtain(Landroid/view/View;)Landroid/view/ViewGroup$HoverTarget;
    .locals 3
    .param p0, "child"    # Landroid/view/View;

    .line 8997
    if-eqz p0, :cond_1

    .line 9002
    sget-object v0, Landroid/view/ViewGroup$HoverTarget;->sRecycleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9003
    :try_start_0
    sget-object v1, Landroid/view/ViewGroup$HoverTarget;->sRecycleBin:Landroid/view/ViewGroup$HoverTarget;

    if-nez v1, :cond_0

    .line 9004
    new-instance v1, Landroid/view/ViewGroup$HoverTarget;

    invoke-direct {v1}, Landroid/view/ViewGroup$HoverTarget;-><init>()V

    .local v1, "target":Landroid/view/ViewGroup$HoverTarget;
    goto :goto_0

    .line 9006
    .end local v1    # "target":Landroid/view/ViewGroup$HoverTarget;
    :cond_0
    nop

    .line 9007
    .restart local v1    # "target":Landroid/view/ViewGroup$HoverTarget;
    iget-object v2, v1, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    sput-object v2, Landroid/view/ViewGroup$HoverTarget;->sRecycleBin:Landroid/view/ViewGroup$HoverTarget;

    .line 9008
    sget v2, Landroid/view/ViewGroup$HoverTarget;->sRecycledCount:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Landroid/view/ViewGroup$HoverTarget;->sRecycledCount:I

    .line 9009
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 9011
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9012
    iput-object p0, v1, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    .line 9013
    return-object v1

    .line 9011
    .end local v1    # "target":Landroid/view/ViewGroup$HoverTarget;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 8998
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "child must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public greylist-max-o recycle()V
    .locals 4

    .line 9017
    iget-object v0, p0, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 9021
    sget-object v0, Landroid/view/ViewGroup$HoverTarget;->sRecycleLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9022
    :try_start_0
    sget v1, Landroid/view/ViewGroup$HoverTarget;->sRecycledCount:I

    const/16 v2, 0x20

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    .line 9023
    sget-object v2, Landroid/view/ViewGroup$HoverTarget;->sRecycleBin:Landroid/view/ViewGroup$HoverTarget;

    iput-object v2, p0, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 9024
    sput-object p0, Landroid/view/ViewGroup$HoverTarget;->sRecycleBin:Landroid/view/ViewGroup$HoverTarget;

    .line 9025
    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/view/ViewGroup$HoverTarget;->sRecycledCount:I

    goto :goto_0

    .line 9027
    :cond_0
    iput-object v3, p0, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 9029
    :goto_0
    iput-object v3, p0, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    .line 9030
    monitor-exit v0

    .line 9031
    return-void

    .line 9030
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 9018
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already recycled once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
