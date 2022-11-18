.class public final Landroid/hardware/camera2/params/VendorTagDescriptor;
.super Ljava/lang/Object;
.source "VendorTagDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/camera2/params/VendorTagDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "VendorTagDescriptor"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Landroid/hardware/camera2/params/VendorTagDescriptor$1;

    invoke-direct {v0}, Landroid/hardware/camera2/params/VendorTagDescriptor$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/params/VendorTagDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/camera2/params/VendorTagDescriptor-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/params/VendorTagDescriptor;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 55
    if-eqz p1, :cond_0

    .line 58
    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dest must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
