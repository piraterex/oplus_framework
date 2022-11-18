.class final Landroid/media/MediaCodecInfo$LazyHolder;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodecInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LazyHolder"
.end annotation


# static fields
.field private static final blacklist SIZE_RANGE:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetSIZE_RANGE()Landroid/util/Range;
    .locals 1

    sget-object v0, Landroid/media/MediaCodecInfo$LazyHolder;->SIZE_RANGE:Landroid/util/Range;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 211
    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    move-result v0

    const/4 v1, 0x1

    .line 213
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 211
    if-eqz v0, :cond_0

    .line 212
    const v0, 0x8000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    goto :goto_0

    .line 213
    :cond_0
    invoke-static {}, Landroid/sysprop/MediaProperties;->resolution_limit_32bit()Ljava/util/Optional;

    move-result-object v0

    const/16 v2, 0x1000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v1, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    :goto_0
    sput-object v0, Landroid/media/MediaCodecInfo$LazyHolder;->SIZE_RANGE:Landroid/util/Range;

    .line 211
    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
