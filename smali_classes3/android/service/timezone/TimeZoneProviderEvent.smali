.class public final Landroid/service/timezone/TimeZoneProviderEvent;
.super Ljava/lang/Object;
.source "TimeZoneProviderEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/timezone/TimeZoneProviderEvent$EventType;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/timezone/TimeZoneProviderEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EVENT_TYPE_PERMANENT_FAILURE:I = 0x1

.field public static final blacklist EVENT_TYPE_SUGGESTION:I = 0x2

.field public static final blacklist EVENT_TYPE_UNCERTAIN:I = 0x3


# instance fields
.field private final blacklist mCreationElapsedMillis:J

.field private final blacklist mFailureCause:Ljava/lang/String;

.field private final blacklist mSuggestion:Landroid/service/timezone/TimeZoneProviderSuggestion;

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 137
    new-instance v0, Landroid/service/timezone/TimeZoneProviderEvent$1;

    invoke-direct {v0}, Landroid/service/timezone/TimeZoneProviderEvent$1;-><init>()V

    sput-object v0, Landroid/service/timezone/TimeZoneProviderEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IJLandroid/service/timezone/TimeZoneProviderSuggestion;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "creationElapsedMillis"    # J
    .param p4, "suggestion"    # Landroid/service/timezone/TimeZoneProviderSuggestion;
    .param p5, "failureCause"    # Ljava/lang/String;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p1, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mType:I

    .line 80
    iput-wide p2, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mCreationElapsedMillis:J

    .line 81
    iput-object p4, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mSuggestion:Landroid/service/timezone/TimeZoneProviderSuggestion;

    .line 82
    iput-object p5, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mFailureCause:Ljava/lang/String;

    .line 83
    return-void
.end method

.method synthetic constructor blacklist <init>(IJLandroid/service/timezone/TimeZoneProviderSuggestion;Ljava/lang/String;Landroid/service/timezone/TimeZoneProviderEvent-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/service/timezone/TimeZoneProviderEvent;-><init>(IJLandroid/service/timezone/TimeZoneProviderSuggestion;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist createPermanentFailureEvent(JLjava/lang/String;)Landroid/service/timezone/TimeZoneProviderEvent;
    .locals 7
    .param p0, "creationElapsedMillis"    # J
    .param p2, "cause"    # Ljava/lang/String;

    .line 103
    new-instance v6, Landroid/service/timezone/TimeZoneProviderEvent;

    .line 104
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, v6

    move-wide v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/service/timezone/TimeZoneProviderEvent;-><init>(IJLandroid/service/timezone/TimeZoneProviderSuggestion;Ljava/lang/String;)V

    .line 103
    return-object v6
.end method

.method public static blacklist createSuggestionEvent(JLandroid/service/timezone/TimeZoneProviderSuggestion;)Landroid/service/timezone/TimeZoneProviderEvent;
    .locals 7
    .param p0, "creationElapsedMillis"    # J
    .param p2, "suggestion"    # Landroid/service/timezone/TimeZoneProviderSuggestion;

    .line 89
    new-instance v6, Landroid/service/timezone/TimeZoneProviderEvent;

    .line 90
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/service/timezone/TimeZoneProviderSuggestion;

    const/4 v1, 0x2

    const/4 v5, 0x0

    move-object v0, v6

    move-wide v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/service/timezone/TimeZoneProviderEvent;-><init>(IJLandroid/service/timezone/TimeZoneProviderSuggestion;Ljava/lang/String;)V

    .line 89
    return-object v6
.end method

.method public static blacklist createUncertainEvent(J)Landroid/service/timezone/TimeZoneProviderEvent;
    .locals 7
    .param p0, "creationElapsedMillis"    # J

    .line 96
    new-instance v6, Landroid/service/timezone/TimeZoneProviderEvent;

    const/4 v1, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-wide v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/service/timezone/TimeZoneProviderEvent;-><init>(IJLandroid/service/timezone/TimeZoneProviderSuggestion;Ljava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 201
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 202
    return v0

    .line 204
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 207
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/service/timezone/TimeZoneProviderEvent;

    .line 208
    .local v2, "that":Landroid/service/timezone/TimeZoneProviderEvent;
    iget v3, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mType:I

    iget v4, v2, Landroid/service/timezone/TimeZoneProviderEvent;->mType:I

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mCreationElapsedMillis:J

    iget-wide v5, v2, Landroid/service/timezone/TimeZoneProviderEvent;->mCreationElapsedMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mSuggestion:Landroid/service/timezone/TimeZoneProviderSuggestion;

    iget-object v4, v2, Landroid/service/timezone/TimeZoneProviderEvent;->mSuggestion:Landroid/service/timezone/TimeZoneProviderSuggestion;

    .line 210
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mFailureCause:Ljava/lang/String;

    iget-object v4, v2, Landroid/service/timezone/TimeZoneProviderEvent;->mFailureCause:Ljava/lang/String;

    .line 211
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 208
    :goto_0
    return v0

    .line 205
    .end local v2    # "that":Landroid/service/timezone/TimeZoneProviderEvent;
    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getCreationElapsedMillis()J
    .locals 2

    .line 117
    iget-wide v0, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mCreationElapsedMillis:J

    return-wide v0
.end method

.method public blacklist getFailureCause()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mFailureCause:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSuggestion()Landroid/service/timezone/TimeZoneProviderSuggestion;
    .locals 1

    .line 125
    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mSuggestion:Landroid/service/timezone/TimeZoneProviderSuggestion;

    return-object v0
.end method

.method public blacklist getType()I
    .locals 1

    .line 111
    iget v0, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 216
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mCreationElapsedMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mSuggestion:Landroid/service/timezone/TimeZoneProviderSuggestion;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mFailureCause:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isEquivalentTo(Landroid/service/timezone/TimeZoneProviderEvent;)Z
    .locals 3
    .param p1, "other"    # Landroid/service/timezone/TimeZoneProviderEvent;

    .line 187
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 188
    return v0

    .line 190
    :cond_0
    if-eqz p1, :cond_3

    iget v1, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mType:I

    iget v2, p1, Landroid/service/timezone/TimeZoneProviderEvent;->mType:I

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 193
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 194
    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mSuggestion:Landroid/service/timezone/TimeZoneProviderSuggestion;

    invoke-virtual {p1}, Landroid/service/timezone/TimeZoneProviderEvent;->getSuggestion()Landroid/service/timezone/TimeZoneProviderSuggestion;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/timezone/TimeZoneProviderSuggestion;->isEquivalentTo(Landroid/service/timezone/TimeZoneProviderSuggestion;)Z

    move-result v0

    return v0

    .line 196
    :cond_2
    return v0

    .line 191
    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeZoneProviderEvent{mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCreationElapsedMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mCreationElapsedMillis:J

    .line 173
    invoke-static {v1, v2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Duration;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSuggestion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mSuggestion:Landroid/service/timezone/TimeZoneProviderSuggestion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFailureCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mFailureCause:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 163
    iget v0, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget-wide v0, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mCreationElapsedMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 165
    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mSuggestion:Landroid/service/timezone/TimeZoneProviderSuggestion;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 166
    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderEvent;->mFailureCause:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 167
    return-void
.end method
