.class public final Landroid/os/UidProto$StateTime;
.super Ljava/lang/Object;
.source "UidProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UidProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StateTime"
.end annotation


# static fields
.field public static final greylist-max-o DURATION_MS:J = 0x10300000002L

.field public static final greylist-max-o PROCESS_STATE_BACKGROUND:I = 0x3

.field public static final greylist-max-o PROCESS_STATE_CACHED:I = 0x6

.field public static final greylist-max-o PROCESS_STATE_FOREGROUND:I = 0x2

.field public static final greylist-max-o PROCESS_STATE_FOREGROUND_SERVICE:I = 0x1

.field public static final greylist-max-o PROCESS_STATE_HEAVY_WEIGHT:I = 0x5

.field public static final greylist-max-o PROCESS_STATE_TOP:I = 0x0

.field public static final greylist-max-o PROCESS_STATE_TOP_SLEEPING:I = 0x4

.field public static final greylist-max-o STATE:J = 0x10e00000001L


# instance fields
.field final synthetic blacklist this$0:Landroid/os/UidProto;


# direct methods
.method public constructor blacklist <init>(Landroid/os/UidProto;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/UidProto;

    .line 263
    iput-object p1, p0, Landroid/os/UidProto$StateTime;->this$0:Landroid/os/UidProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
