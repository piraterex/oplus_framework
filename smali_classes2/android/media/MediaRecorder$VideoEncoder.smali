.class public final Landroid/media/MediaRecorder$VideoEncoder;
.super Ljava/lang/Object;
.source "MediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VideoEncoder"
.end annotation


# static fields
.field public static final whitelist AV1:I = 0x8

.field public static final whitelist DEFAULT:I = 0x0

.field public static final whitelist DOLBY_VISION:I = 0x7

.field public static final whitelist H263:I = 0x1

.field public static final whitelist H264:I = 0x2

.field public static final whitelist HEVC:I = 0x5

.field public static final whitelist MPEG_4_SP:I = 0x3

.field public static final whitelist VP8:I = 0x4

.field public static final whitelist VP9:I = 0x6


# instance fields
.field final synthetic blacklist this$0:Landroid/media/MediaRecorder;


# direct methods
.method private constructor blacklist <init>(Landroid/media/MediaRecorder;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaRecorder;

    .line 719
    iput-object p1, p0, Landroid/media/MediaRecorder$VideoEncoder;->this$0:Landroid/media/MediaRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
