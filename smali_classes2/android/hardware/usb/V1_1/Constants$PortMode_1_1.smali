.class public final Landroid/hardware/usb/V1_1/Constants$PortMode_1_1;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/V1_1/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PortMode_1_1"
.end annotation


# static fields
.field public static final blacklist AUDIO_ACCESSORY:I = 0x4

.field public static final blacklist DEBUG_ACCESSORY:I = 0x8

.field public static final blacklist DFP:I = 0x2

.field public static final blacklist DRP:I = 0x3

.field public static final blacklist NONE:I = 0x0

.field public static final blacklist NUM_MODES:I = 0x4

.field public static final blacklist NUM_MODES_1_1:I = 0x10

.field public static final blacklist UFP:I = 0x1


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/usb/V1_1/Constants;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/usb/V1_1/Constants;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/usb/V1_1/Constants;

    .line 8
    iput-object p1, p0, Landroid/hardware/usb/V1_1/Constants$PortMode_1_1;->this$0:Landroid/hardware/usb/V1_1/Constants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
