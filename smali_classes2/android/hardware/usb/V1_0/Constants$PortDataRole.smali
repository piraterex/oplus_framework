.class public final Landroid/hardware/usb/V1_0/Constants$PortDataRole;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/V1_0/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PortDataRole"
.end annotation


# static fields
.field public static final blacklist DEVICE:I = 0x2

.field public static final blacklist HOST:I = 0x1

.field public static final blacklist NONE:I = 0x0

.field public static final blacklist NUM_DATA_ROLES:I = 0x3


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/usb/V1_0/Constants;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/usb/V1_0/Constants;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/usb/V1_0/Constants;

    .line 8
    iput-object p1, p0, Landroid/hardware/usb/V1_0/Constants$PortDataRole;->this$0:Landroid/hardware/usb/V1_0/Constants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
