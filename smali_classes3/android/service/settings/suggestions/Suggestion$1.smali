.class Landroid/service/settings/suggestions/Suggestion$1;
.super Ljava/lang/Object;
.source "Suggestion.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/settings/suggestions/Suggestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/settings/suggestions/Suggestion;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/settings/suggestions/Suggestion;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 131
    new-instance v0, Landroid/service/settings/suggestions/Suggestion;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/service/settings/suggestions/Suggestion;-><init>(Landroid/os/Parcel;Landroid/service/settings/suggestions/Suggestion-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 128
    invoke-virtual {p0, p1}, Landroid/service/settings/suggestions/Suggestion$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/settings/suggestions/Suggestion;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/settings/suggestions/Suggestion;
    .locals 1
    .param p1, "size"    # I

    .line 136
    new-array v0, p1, [Landroid/service/settings/suggestions/Suggestion;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 128
    invoke-virtual {p0, p1}, Landroid/service/settings/suggestions/Suggestion$1;->newArray(I)[Landroid/service/settings/suggestions/Suggestion;

    move-result-object p1

    return-object p1
.end method