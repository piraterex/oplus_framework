.class Landroid/hardware/input/VirtualKeyEvent$1;
.super Ljava/lang/Object;
.source "VirtualKeyEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/VirtualKeyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/input/VirtualKeyEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/input/VirtualKeyEvent;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 261
    new-instance v0, Landroid/hardware/input/VirtualKeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/hardware/input/VirtualKeyEvent;-><init>(Landroid/os/Parcel;Landroid/hardware/input/VirtualKeyEvent-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 259
    invoke-virtual {p0, p1}, Landroid/hardware/input/VirtualKeyEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/input/VirtualKeyEvent;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/input/VirtualKeyEvent;
    .locals 1
    .param p1, "size"    # I

    .line 265
    new-array v0, p1, [Landroid/hardware/input/VirtualKeyEvent;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 259
    invoke-virtual {p0, p1}, Landroid/hardware/input/VirtualKeyEvent$1;->newArray(I)[Landroid/hardware/input/VirtualKeyEvent;

    move-result-object p1

    return-object p1
.end method
