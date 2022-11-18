.class Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;
.super Landroid/hardware/location/IGeofenceHardwareCallback$Stub;
.source "GeofenceHardware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/GeofenceHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GeofenceHardwareCallbackWrapper"
.end annotation


# instance fields
.field private greylist-max-o mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/hardware/location/GeofenceHardwareCallback;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/hardware/location/GeofenceHardware;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/location/GeofenceHardware;Landroid/hardware/location/GeofenceHardwareCallback;)V
    .locals 1
    .param p1, "this$0"    # Landroid/hardware/location/GeofenceHardware;
    .param p2, "c"    # Landroid/hardware/location/GeofenceHardwareCallback;

    .line 505
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;->this$0:Landroid/hardware/location/GeofenceHardware;

    invoke-direct {p0}, Landroid/hardware/location/IGeofenceHardwareCallback$Stub;-><init>()V

    .line 506
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    .line 507
    return-void
.end method


# virtual methods
.method public greylist-max-o onGeofenceAdd(II)V
    .locals 1
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 519
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/GeofenceHardwareCallback;

    .line 520
    .local v0, "c":Landroid/hardware/location/GeofenceHardwareCallback;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareCallback;->onGeofenceAdd(II)V

    .line 521
    :cond_0
    return-void
.end method

.method public greylist-max-o onGeofencePause(II)V
    .locals 1
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 532
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/GeofenceHardwareCallback;

    .line 533
    .local v0, "c":Landroid/hardware/location/GeofenceHardwareCallback;
    if-eqz v0, :cond_0

    .line 534
    invoke-virtual {v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareCallback;->onGeofencePause(II)V

    .line 536
    :cond_0
    return-void
.end method

.method public greylist-max-o onGeofenceRemove(II)V
    .locals 2
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 524
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/GeofenceHardwareCallback;

    .line 525
    .local v0, "c":Landroid/hardware/location/GeofenceHardwareCallback;
    if-eqz v0, :cond_0

    .line 526
    invoke-virtual {v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareCallback;->onGeofenceRemove(II)V

    .line 527
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;->this$0:Landroid/hardware/location/GeofenceHardware;

    invoke-static {v1, v0}, Landroid/hardware/location/GeofenceHardware;->-$$Nest$mremoveCallback(Landroid/hardware/location/GeofenceHardware;Landroid/hardware/location/GeofenceHardwareCallback;)V

    .line 529
    :cond_0
    return-void
.end method

.method public greylist-max-o onGeofenceResume(II)V
    .locals 1
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 539
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/GeofenceHardwareCallback;

    .line 540
    .local v0, "c":Landroid/hardware/location/GeofenceHardwareCallback;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/location/GeofenceHardwareCallback;->onGeofenceResume(II)V

    .line 541
    :cond_0
    return-void
.end method

.method public greylist-max-o onGeofenceTransition(IILandroid/location/Location;JI)V
    .locals 8
    .param p1, "geofenceId"    # I
    .param p2, "transition"    # I
    .param p3, "location"    # Landroid/location/Location;
    .param p4, "timestamp"    # J
    .param p6, "monitoringType"    # I

    .line 511
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/GeofenceHardwareCallback;

    .line 512
    .local v0, "c":Landroid/hardware/location/GeofenceHardwareCallback;
    if-eqz v0, :cond_0

    .line 513
    move-object v1, v0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-wide v5, p4

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/hardware/location/GeofenceHardwareCallback;->onGeofenceTransition(IILandroid/location/Location;JI)V

    .line 516
    :cond_0
    return-void
.end method
