.class public final Landroid/service/timezone/TimeZoneProviderSuggestion;
.super Ljava/lang/Object;
.source "TimeZoneProviderSuggestion.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/timezone/TimeZoneProviderSuggestion$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/timezone/TimeZoneProviderSuggestion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mElapsedRealtimeMillis:J

.field private final blacklist mTimeZoneIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 97
    new-instance v0, Landroid/service/timezone/TimeZoneProviderSuggestion$1;

    invoke-direct {v0}, Landroid/service/timezone/TimeZoneProviderSuggestion$1;-><init>()V

    sput-object v0, Landroid/service/timezone/TimeZoneProviderSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/List;J)V
    .locals 1
    .param p2, "elapsedRealtimeMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 48
    .local p1, "timeZoneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Landroid/service/timezone/TimeZoneProviderSuggestion;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/service/timezone/TimeZoneProviderSuggestion;->mTimeZoneIds:Ljava/util/List;

    .line 50
    iput-wide p2, p0, Landroid/service/timezone/TimeZoneProviderSuggestion;->mElapsedRealtimeMillis:J

    .line 51
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/List;JLandroid/service/timezone/TimeZoneProviderSuggestion-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/service/timezone/TimeZoneProviderSuggestion;-><init>(Ljava/util/List;J)V

    return-void
.end method

.method private static blacklist immutableList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 197
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 201
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 145
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 146
    return v0

    .line 148
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 151
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/service/timezone/TimeZoneProviderSuggestion;

    .line 152
    .local v2, "that":Landroid/service/timezone/TimeZoneProviderSuggestion;
    iget-wide v3, p0, Landroid/service/timezone/TimeZoneProviderSuggestion;->mElapsedRealtimeMillis:J

    iget-wide v5, v2, Landroid/service/timezone/TimeZoneProviderSuggestion;->mElapsedRealtimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/service/timezone/TimeZoneProviderSuggestion;->mTimeZoneIds:Ljava/util/List;

    iget-object v4, v2, Landroid/service/timezone/TimeZoneProviderSuggestion;->mTimeZoneIds:Ljava/util/List;

    .line 153
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 152
    :goto_0
    return v0

    .line 149
    .end local v2    # "that":Landroid/service/timezone/TimeZoneProviderSuggestion;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getElapsedRealtimeMillis()J
    .locals 2

    .line 67
    iget-wide v0, p0, Landroid/service/timezone/TimeZoneProviderSuggestion;->mElapsedRealtimeMillis:J

    return-wide v0
.end method

.method public whitelist getTimeZoneIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderSuggestion;->mTimeZoneIds:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 158
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/service/timezone/TimeZoneProviderSuggestion;->mTimeZoneIds:Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/service/timezone/TimeZoneProviderSuggestion;->mElapsedRealtimeMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isEquivalentTo(Landroid/service/timezone/TimeZoneProviderSuggestion;)Z
    .locals 2
    .param p1, "other"    # Landroid/service/timezone/TimeZoneProviderSuggestion;

    .line 133
    if-ne p0, p1, :cond_0

    .line 134
    const/4 v0, 0x1

    return v0

    .line 136
    :cond_0
    if-nez p1, :cond_1

    .line 137
    const/4 v0, 0x0

    return v0

    .line 140
    :cond_1
    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderSuggestion;->mTimeZoneIds:Ljava/util/List;

    iget-object v1, p1, Landroid/service/timezone/TimeZoneProviderSuggestion;->mTimeZoneIds:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeZoneProviderSuggestion{mTimeZoneIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/timezone/TimeZoneProviderSuggestion;->mTimeZoneIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mElapsedRealtimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/service/timezone/TimeZoneProviderSuggestion;->mElapsedRealtimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/service/timezone/TimeZoneProviderSuggestion;->mElapsedRealtimeMillis:J

    .line 93
    invoke-static {v1, v2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 121
    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderSuggestion;->mTimeZoneIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 122
    iget-wide v0, p0, Landroid/service/timezone/TimeZoneProviderSuggestion;->mElapsedRealtimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 123
    return-void
.end method
