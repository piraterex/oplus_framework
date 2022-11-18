.class public final Landroid/media/MediaRecorder$OutputFormat;
.super Ljava/lang/Object;
.source "MediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OutputFormat"
.end annotation


# static fields
.field public static final greylist-max-o AAC_ADIF:I = 0x5

.field public static final whitelist AAC_ADTS:I = 0x6

.field public static final whitelist AMR_NB:I = 0x3

.field public static final whitelist AMR_WB:I = 0x4

.field public static final whitelist DEFAULT:I = 0x0

.field public static final blacklist HEIF:I = 0xa

.field public static final whitelist MPEG_2_TS:I = 0x8

.field public static final whitelist MPEG_4:I = 0x2

.field public static final whitelist OGG:I = 0xb

.field public static final greylist-max-o OUTPUT_FORMAT_RTP_AVP:I = 0x7

.field public static final blacklist QCP:I = 0x14

.field public static final whitelist RAW_AMR:I = 0x3

.field public static final whitelist THREE_GPP:I = 0x1

.field public static final blacklist WAVE:I = 0x15

.field public static final whitelist WEBM:I = 0x9


# instance fields
.field final synthetic blacklist this$0:Landroid/media/MediaRecorder;


# direct methods
.method private constructor blacklist <init>(Landroid/media/MediaRecorder;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaRecorder;

    .line 589
    iput-object p1, p0, Landroid/media/MediaRecorder$OutputFormat;->this$0:Landroid/media/MediaRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
