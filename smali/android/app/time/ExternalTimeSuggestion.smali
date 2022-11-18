.class public final Landroid/app/time/ExternalTimeSuggestion;
.super Ljava/lang/Object;
.source "ExternalTimeSuggestion.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/time/ExternalTimeSuggestion;",
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
.method static bridge synthetic blacklist -$$Nest$smcreateFromParcel(Landroid/os/Parcel;)Landroid/app/time/ExternalTimeSuggestion;
    .locals 0

    invoke-static {p0}, Landroid/app/time/ExternalTimeSuggestion;->createFromParcel(Landroid/os/Parcel;)Landroid/app/time/ExternalTimeSuggestion;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 75
    new-instance v0, Landroid/app/time/ExternalTimeSuggestion$1;

    invoke-direct {v0}, Landroid/app/time/ExternalTimeSuggestion$1;-><init>()V

    sput-object v0, Landroid/app/time/ExternalTimeSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(JJ)V
    .locals 2
    .param p1, "elapsedRealtimeMillis"    # J
    .param p3, "suggestionMillis"    # J

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Landroid/os/TimestampedValue;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Landroid/os/TimestampedValue;-><init>(JLjava/lang/Object;)V

    iput-object v0, p0, Landroid/app/time/ExternalTimeSuggestion;->mUnixEpochTime:Landroid/os/TimestampedValue;

    .line 102
    return-void
.end method

.method private static blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/time/ExternalTimeSuggestion;
    .locals 7
    .param p0, "in"    # Landroid/os/Parcel;

    .line 105
    const-class v0, Landroid/os/TimestampedValue;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/TimestampedValue;

    .line 106
    .local v0, "utcTime":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<Ljava/lang/Long;>;"
    new-instance v2, Landroid/app/time/ExternalTimeSuggestion;

    .line 107
    invoke-virtual {v0}, Landroid/os/TimestampedValue;->getReferenceTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/os/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/app/time/ExternalTimeSuggestion;-><init>(JJ)V

    .line 109
    .local v2, "suggestion":Landroid/app/time/ExternalTimeSuggestion;
    const-class v3, Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v1

    .line 110
    .local v1, "debugInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object v1, v2, Landroid/app/time/ExternalTimeSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    .line 111
    return-object v2
.end method


# virtual methods
.method public varargs whitelist addDebugInfo([Ljava/lang/String;)V
    .locals 2
    .param p1, "debugInfos"    # [Ljava/lang/String;

    .line 149
    iget-object v0, p0, Landroid/app/time/ExternalTimeSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/time/ExternalTimeSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    .line 152
    :cond_0
    iget-object v0, p0, Landroid/app/time/ExternalTimeSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 153
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 157
    if-ne p0, p1, :cond_0

    .line 158
    const/4 v0, 0x1

    return v0

    .line 160
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 163
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/app/time/ExternalTimeSuggestion;

    .line 164
    .local v0, "that":Landroid/app/time/ExternalTimeSuggestion;
    iget-object v1, p0, Landroid/app/time/ExternalTimeSuggestion;->mUnixEpochTime:Landroid/os/TimestampedValue;

    iget-object v2, v0, Landroid/app/time/ExternalTimeSuggestion;->mUnixEpochTime:Landroid/os/TimestampedValue;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 161
    .end local v0    # "that":Landroid/app/time/ExternalTimeSuggestion;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDebugInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Landroid/app/time/ExternalTimeSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 139
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 140
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 138
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

    .line 130
    iget-object v0, p0, Landroid/app/time/ExternalTimeSuggestion;->mUnixEpochTime:Landroid/os/TimestampedValue;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 169
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/app/time/ExternalTimeSuggestion;->mUnixEpochTime:Landroid/os/TimestampedValue;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExternalTimeSuggestion{mUnixEpochTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/time/ExternalTimeSuggestion;->mUnixEpochTime:Landroid/os/TimestampedValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDebugInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/time/ExternalTimeSuggestion;->mDebugInfo:Ljava/util/ArrayList;

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

    .line 121
    iget-object v0, p0, Landroid/app/time/ExternalTimeSuggestion;->mUnixEpochTime:Landroid/os/TimestampedValue;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 122
    iget-object v0, p0, Landroid/app/time/ExternalTimeSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 123
    return-void
.end method
