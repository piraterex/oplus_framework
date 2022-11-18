.class public abstract Landroid/view/DisplayAddress;
.super Ljava/lang/Object;
.source "DisplayAddress.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/DisplayAddress$Network;,
        Landroid/view/DisplayAddress$Physical;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist fromMacAddress(Ljava/lang/String;)Landroid/view/DisplayAddress$Network;
    .locals 2
    .param p0, "macAddress"    # Ljava/lang/String;

    .line 63
    new-instance v0, Landroid/view/DisplayAddress$Network;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/DisplayAddress$Network;-><init>(Ljava/lang/String;Landroid/view/DisplayAddress$Network-IA;)V

    return-object v0
.end method

.method public static blacklist fromPhysicalDisplayId(J)Landroid/view/DisplayAddress$Physical;
    .locals 2
    .param p0, "physicalDisplayId"    # J

    .line 40
    new-instance v0, Landroid/view/DisplayAddress$Physical;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/view/DisplayAddress$Physical;-><init>(JLandroid/view/DisplayAddress$Physical-IA;)V

    return-object v0
.end method

.method public static blacklist fromPortAndModel(ILjava/lang/Long;)Landroid/view/DisplayAddress$Physical;
    .locals 2
    .param p0, "port"    # I
    .param p1, "model"    # Ljava/lang/Long;

    .line 52
    new-instance v0, Landroid/view/DisplayAddress$Physical;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/view/DisplayAddress$Physical;-><init>(ILjava/lang/Long;Landroid/view/DisplayAddress$Physical-IA;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 213
    const/4 v0, 0x0

    return v0
.end method
