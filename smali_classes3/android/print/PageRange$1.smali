.class Landroid/print/PageRange$1;
.super Ljava/lang/Object;
.source "PageRange.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PageRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/print/PageRange;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/print/PageRange;
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 170
    new-instance v0, Landroid/print/PageRange;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/print/PageRange;-><init>(Landroid/os/Parcel;Landroid/print/PageRange-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 167
    invoke-virtual {p0, p1}, Landroid/print/PageRange$1;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PageRange;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/print/PageRange;
    .locals 1
    .param p1, "size"    # I

    .line 175
    new-array v0, p1, [Landroid/print/PageRange;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 167
    invoke-virtual {p0, p1}, Landroid/print/PageRange$1;->newArray(I)[Landroid/print/PageRange;

    move-result-object p1

    return-object p1
.end method
