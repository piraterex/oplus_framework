.class Lcom/android/internal/app/chooser/DisplayResolveInfo$1;
.super Ljava/lang/Object;
.source "DisplayResolveInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/chooser/DisplayResolveInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 230
    new-instance v0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Landroid/os/Parcel;Lcom/android/internal/app/chooser/DisplayResolveInfo-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 228
    invoke-virtual {p0, p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .locals 1
    .param p1, "size"    # I

    .line 234
    new-array v0, p1, [Lcom/android/internal/app/chooser/DisplayResolveInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 228
    invoke-virtual {p0, p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo$1;->newArray(I)[Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object p1

    return-object p1
.end method
