.class Landroid/app/search/SearchSessionId$1;
.super Ljava/lang/Object;
.source "SearchSessionId.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/search/SearchSessionId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/search/SearchSessionId;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/search/SearchSessionId;
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 92
    new-instance v0, Landroid/app/search/SearchSessionId;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/search/SearchSessionId;-><init>(Landroid/os/Parcel;Landroid/app/search/SearchSessionId-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Landroid/app/search/SearchSessionId$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/search/SearchSessionId;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/search/SearchSessionId;
    .locals 1
    .param p1, "size"    # I

    .line 96
    new-array v0, p1, [Landroid/app/search/SearchSessionId;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Landroid/app/search/SearchSessionId$1;->newArray(I)[Landroid/app/search/SearchSessionId;

    move-result-object p1

    return-object p1
.end method
