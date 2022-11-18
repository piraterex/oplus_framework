.class public final Landroid/os/SystemProto$ScreenBrightness;
.super Ljava/lang/Object;
.source "SystemProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ScreenBrightness"
.end annotation


# static fields
.field public static final greylist-max-o BRIGHT:I = 0x4

.field public static final greylist-max-o DARK:I = 0x0

.field public static final greylist-max-o DIM:I = 0x1

.field public static final greylist-max-o LIGHT:I = 0x3

.field public static final greylist-max-o MEDIUM:I = 0x2

.field public static final greylist-max-o NAME:J = 0x10e00000001L

.field public static final greylist-max-o TOTAL:J = 0x10b00000002L


# instance fields
.field final synthetic blacklist this$0:Landroid/os/SystemProto;


# direct methods
.method public constructor blacklist <init>(Landroid/os/SystemProto;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/SystemProto;

    .line 345
    iput-object p1, p0, Landroid/os/SystemProto$ScreenBrightness;->this$0:Landroid/os/SystemProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
