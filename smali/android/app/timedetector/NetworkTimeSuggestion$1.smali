.class Landroid/app/timedetector/NetworkTimeSuggestion$1;
.super Ljava/lang/Object;
.source "NetworkTimeSuggestion.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/timedetector/NetworkTimeSuggestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/timedetector/NetworkTimeSuggestion;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/timedetector/NetworkTimeSuggestion;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 53
    invoke-static {p1}, Landroid/app/timedetector/NetworkTimeSuggestion;->-$$Nest$smcreateFromParcel(Landroid/os/Parcel;)Landroid/app/timedetector/NetworkTimeSuggestion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Landroid/app/timedetector/NetworkTimeSuggestion$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/timedetector/NetworkTimeSuggestion;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/timedetector/NetworkTimeSuggestion;
    .locals 1
    .param p1, "size"    # I

    .line 57
    new-array v0, p1, [Landroid/app/timedetector/NetworkTimeSuggestion;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Landroid/app/timedetector/NetworkTimeSuggestion$1;->newArray(I)[Landroid/app/timedetector/NetworkTimeSuggestion;

    move-result-object p1

    return-object p1
.end method
