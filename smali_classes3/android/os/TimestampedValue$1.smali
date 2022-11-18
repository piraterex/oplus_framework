.class Landroid/os/TimestampedValue$1;
.super Ljava/lang/Object;
.source "TimestampedValue.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/TimestampedValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Landroid/os/TimestampedValue<",
        "*>;>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/os/TimestampedValue;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/os/TimestampedValue<",
            "*>;"
        }
    .end annotation

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/TimestampedValue$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/TimestampedValue;

    move-result-object v0

    return-object v0
.end method

.method public blacklist createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/TimestampedValue;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Landroid/os/TimestampedValue<",
            "*>;"
        }
    .end annotation

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 109
    .local v0, "referenceTimeMillis":J
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    .line 110
    .local v2, "value":Ljava/lang/Object;
    new-instance v3, Landroid/os/TimestampedValue;

    invoke-direct {v3, v0, v1, v2}, Landroid/os/TimestampedValue;-><init>(JLjava/lang/Object;)V

    return-object v3
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 98
    invoke-virtual {p0, p1}, Landroid/os/TimestampedValue$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/TimestampedValue;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 98
    invoke-virtual {p0, p1, p2}, Landroid/os/TimestampedValue$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/TimestampedValue;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/os/TimestampedValue;
    .locals 1
    .param p1, "size"    # I

    .line 115
    new-array v0, p1, [Landroid/os/TimestampedValue;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 98
    invoke-virtual {p0, p1}, Landroid/os/TimestampedValue$1;->newArray(I)[Landroid/os/TimestampedValue;

    move-result-object p1

    return-object p1
.end method
