.class public Landroid/hardware/display/IDeviceProductInfoConstants$Default;
.super Ljava/lang/Object;
.source "IDeviceProductInfoConstants.java"

# interfaces
.implements Landroid/hardware/display/IDeviceProductInfoConstants;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/IDeviceProductInfoConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 13
    const/4 v0, 0x0

    return-object v0
.end method
