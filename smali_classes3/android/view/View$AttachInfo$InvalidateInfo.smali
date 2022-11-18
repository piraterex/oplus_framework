.class Landroid/view/View$AttachInfo$InvalidateInfo;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View$AttachInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InvalidateInfo"
.end annotation


# static fields
.field private static final greylist-max-o POOL_LIMIT:I = 0xa

.field private static final greylist-max-o sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/view/View$AttachInfo$InvalidateInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field greylist bottom:I

.field greylist left:I

.field greylist right:I

.field greylist target:Landroid/view/View;

.field greylist top:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 30107
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/view/View$AttachInfo$InvalidateInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method constructor greylist <init>()V
    .locals 0

    .line 30102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30103
    return-void
.end method

.method public static greylist-max-o obtain()Landroid/view/View$AttachInfo$InvalidateInfo;
    .locals 2

    .line 30123
    sget-object v0, Landroid/view/View$AttachInfo$InvalidateInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$AttachInfo$InvalidateInfo;

    .line 30124
    .local v0, "instance":Landroid/view/View$AttachInfo$InvalidateInfo;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/view/View$AttachInfo$InvalidateInfo;

    invoke-direct {v1}, Landroid/view/View$AttachInfo$InvalidateInfo;-><init>()V

    :goto_0
    return-object v1
.end method


# virtual methods
.method public greylist-max-o recycle()V
    .locals 1

    .line 30128
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    .line 30129
    sget-object v0, Landroid/view/View$AttachInfo$InvalidateInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 30130
    return-void
.end method
