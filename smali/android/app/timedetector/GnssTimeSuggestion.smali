.class public final Landroid/app/timedetector/GnssTimeSuggestion;
.super Ljava/lang/Object;
.source "GnssTimeSuggestion.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/timedetector/GnssTimeSuggestion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mDebugInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUnixEpochTime:Landroid/os/TimestampedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcreateFromParcel(Landroid/os/Parcel;)Landroid/app/timedetector/GnssTimeSuggestion;
    .locals 0

    invoke-static {p0}, Landroid/app/timedetector/GnssTimeSuggestion;->createFromParcel(Landroid/os/Parcel;)Landroid/app/timedetector/GnssTimeSuggestion;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Landroid/app/timedetector/GnssTimeSuggestion$1;

    invoke-direct {v0}, Landroid/app/timedetector/GnssTimeSuggestion$1;-><init>()V

    sput-object v0, Landroid/app/timedetector/GnssTimeSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/TimestampedValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 63
    .local p1, "unixEpochTime":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/TimestampedValue;

    iput-object v0, p0, Landroid/app/timedetector/GnssTimeSuggestion;->mUnixEpochTime:Landroid/os/TimestampedValue;

    .line 65
    invoke-virtual {p1}, Landroid/os/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method

.method private static blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/timedetector/GnssTimeSuggestion;
    .locals 4
    .param p0, "in"    # Landroid/os/Parcel;

    .line 69
    const-class v0, Landroid/os/TimestampedValue;

    .line 70
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/TimestampedValue;

    .line 71
    .local v0, "unixEpochTime":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<Ljava/lang/Long;>;"
    new-instance v2, Landroid/app/timedetector/GnssTimeSuggestion;

    invoke-direct {v2, v0}, Landroid/app/timedetector/GnssTimeSuggestion;-><init>(Landroid/os/TimestampedValue;)V

    .line 73
    .local v2, "suggestion":Landroid/app/timedetector/GnssTimeSuggestion;
    const-class v3, Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v1

    .line 75
    .local v1, "debugInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object v1, v2, Landroid/app/timedetector/GnssTimeSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    .line 76
    return-object v2
.end method


# virtual methods
.method public varargs blacklist addDebugInfo([Ljava/lang/String;)V
    .locals 2
    .param p1, "debugInfos"    # [Ljava/lang/String;

    .line 107
    iget-object v0, p0, Landroid/app/timedetector/GnssTimeSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/timedetector/GnssTimeSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    .line 110
    :cond_0
    iget-object v0, p0, Landroid/app/timedetector/GnssTimeSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 111
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 115
    if-ne p0, p1, :cond_0

    .line 116
    const/4 v0, 0x1

    return v0

    .line 118
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 121
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/app/timedetector/GnssTimeSuggestion;

    .line 122
    .local v0, "that":Landroid/app/timedetector/GnssTimeSuggestion;
    iget-object v1, p0, Landroid/app/timedetector/GnssTimeSuggestion;->mUnixEpochTime:Landroid/os/TimestampedValue;

    iget-object v2, v0, Landroid/app/timedetector/GnssTimeSuggestion;->mUnixEpochTime:Landroid/os/TimestampedValue;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 119
    .end local v0    # "that":Landroid/app/timedetector/GnssTimeSuggestion;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDebugInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Landroid/app/timedetector/GnssTimeSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 98
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 97
    :goto_0
    return-object v0
.end method

.method public blacklist getUnixEpochTime()Landroid/os/TimestampedValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Landroid/app/timedetector/GnssTimeSuggestion;->mUnixEpochTime:Landroid/os/TimestampedValue;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 127
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/app/timedetector/GnssTimeSuggestion;->mUnixEpochTime:Landroid/os/TimestampedValue;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GnssTimeSuggestion{mUnixEpochTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/timedetector/GnssTimeSuggestion;->mUnixEpochTime:Landroid/os/TimestampedValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDebugInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/timedetector/GnssTimeSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 86
    iget-object v0, p0, Landroid/app/timedetector/GnssTimeSuggestion;->mUnixEpochTime:Landroid/os/TimestampedValue;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 87
    iget-object v0, p0, Landroid/app/timedetector/GnssTimeSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 88
    return-void
.end method
