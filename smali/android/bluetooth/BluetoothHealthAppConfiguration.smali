.class public final Landroid/bluetooth/BluetoothHealthAppConfiguration;
.super Ljava/lang/Object;
.source "BluetoothHealthAppConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothHealthAppConfiguration;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 100
    new-instance v0, Landroid/bluetooth/BluetoothHealthAppConfiguration$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothHealthAppConfiguration$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothHealthAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDataType()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getRole()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 114
    return-void
.end method
