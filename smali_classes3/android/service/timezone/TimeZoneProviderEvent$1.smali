.class Landroid/service/timezone/TimeZoneProviderEvent$1;
.super Ljava/lang/Object;
.source "TimeZoneProviderEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/timezone/TimeZoneProviderEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/timezone/TimeZoneProviderEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/timezone/TimeZoneProviderEvent;
    .locals 13
    .param p1, "in"    # Landroid/os/Parcel;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 142
    .local v7, "type":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 143
    .local v8, "creationElapsedMillis":J
    nop

    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/service/timezone/TimeZoneProviderSuggestion;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/service/timezone/TimeZoneProviderSuggestion;

    .line 145
    .local v10, "suggestion":Landroid/service/timezone/TimeZoneProviderSuggestion;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v11

    .line 146
    .local v11, "failureCause":Ljava/lang/String;
    new-instance v12, Landroid/service/timezone/TimeZoneProviderEvent;

    const/4 v6, 0x0

    move-object v0, v12

    move v1, v7

    move-wide v2, v8

    move-object v4, v10

    move-object v5, v11

    invoke-direct/range {v0 .. v6}, Landroid/service/timezone/TimeZoneProviderEvent;-><init>(IJLandroid/service/timezone/TimeZoneProviderSuggestion;Ljava/lang/String;Landroid/service/timezone/TimeZoneProviderEvent-IA;)V

    return-object v12
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 138
    invoke-virtual {p0, p1}, Landroid/service/timezone/TimeZoneProviderEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/timezone/TimeZoneProviderEvent;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/timezone/TimeZoneProviderEvent;
    .locals 1
    .param p1, "size"    # I

    .line 152
    new-array v0, p1, [Landroid/service/timezone/TimeZoneProviderEvent;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 138
    invoke-virtual {p0, p1}, Landroid/service/timezone/TimeZoneProviderEvent$1;->newArray(I)[Landroid/service/timezone/TimeZoneProviderEvent;

    move-result-object p1

    return-object p1
.end method
