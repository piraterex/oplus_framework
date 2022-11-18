.class public final Landroid/app/timedetector/TelephonyTimeSuggestion;
.super Ljava/lang/Object;
.source "TelephonyTimeSuggestion.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/timedetector/TelephonyTimeSuggestion;",
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

.field private final blacklist mSlotIndex:I

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
.method static bridge synthetic blacklist -$$Nest$smcreateFromParcel(Landroid/os/Parcel;)Landroid/app/timedetector/TelephonyTimeSuggestion;
    .locals 0

    invoke-static {p0}, Landroid/app/timedetector/TelephonyTimeSuggestion;->createFromParcel(Landroid/os/Parcel;)Landroid/app/timedetector/TelephonyTimeSuggestion;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Landroid/app/timedetector/TelephonyTimeSuggestion$1;

    invoke-direct {v0}, Landroid/app/timedetector/TelephonyTimeSuggestion$1;-><init>()V

    sput-object v0, Landroid/app/timedetector/TelephonyTimeSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {p1}, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->-$$Nest$fgetmSlotIndex(Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mSlotIndex:I

    .line 73
    invoke-static {p1}, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->-$$Nest$fgetmUnixEpochTime(Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;)Landroid/os/TimestampedValue;

    move-result-object v0

    iput-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mUnixEpochTime:Landroid/os/TimestampedValue;

    .line 74
    invoke-static {p1}, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->-$$Nest$fgetmDebugInfo(Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->-$$Nest$fgetmDebugInfo(Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    .line 75
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;Landroid/app/timedetector/TelephonyTimeSuggestion-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/timedetector/TelephonyTimeSuggestion;-><init>(Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;)V

    return-void
.end method

.method private static blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/timedetector/TelephonyTimeSuggestion;
    .locals 5
    .param p0, "in"    # Landroid/os/Parcel;

    .line 78
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 79
    .local v0, "slotIndex":I
    const-class v1, Landroid/os/TimestampedValue;

    .line 80
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/TimestampedValue;

    .line 81
    .local v1, "unixEpochTime":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<Ljava/lang/Long;>;"
    new-instance v3, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;

    invoke-direct {v3, v0}, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;-><init>(I)V

    .line 82
    invoke-virtual {v3, v1}, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->setUnixEpochTime(Landroid/os/TimestampedValue;)Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;

    move-result-object v3

    .line 83
    invoke-virtual {v3}, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->build()Landroid/app/timedetector/TelephonyTimeSuggestion;

    move-result-object v3

    .line 85
    .local v3, "suggestion":Landroid/app/timedetector/TelephonyTimeSuggestion;
    const-class v4, Ljava/lang/String;

    invoke-virtual {p0, v2, v4}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v2

    .line 87
    .local v2, "debugInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 88
    invoke-virtual {v3, v2}, Landroid/app/timedetector/TelephonyTimeSuggestion;->addDebugInfo(Ljava/util/List;)V

    .line 90
    :cond_0
    return-object v3
.end method


# virtual methods
.method public blacklist addDebugInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "debugInfo"    # Ljava/lang/String;

    .line 141
    iget-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    .line 144
    :cond_0
    iget-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    return-void
.end method

.method public blacklist addDebugInfo(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 153
    .local p1, "debugInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    .line 156
    :cond_0
    iget-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 157
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 161
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 162
    return v0

    .line 164
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 167
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/timedetector/TelephonyTimeSuggestion;

    .line 168
    .local v2, "that":Landroid/app/timedetector/TelephonyTimeSuggestion;
    iget v3, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mSlotIndex:I

    iget v4, v2, Landroid/app/timedetector/TelephonyTimeSuggestion;->mSlotIndex:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mUnixEpochTime:Landroid/os/TimestampedValue;

    iget-object v4, v2, Landroid/app/timedetector/TelephonyTimeSuggestion;->mUnixEpochTime:Landroid/os/TimestampedValue;

    .line 169
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 168
    :goto_0
    return v0

    .line 165
    .end local v2    # "that":Landroid/app/timedetector/TelephonyTimeSuggestion;
    :cond_3
    :goto_1
    return v1
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

    .line 131
    iget-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 132
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 131
    :goto_0
    return-object v0
.end method

.method public blacklist getSlotIndex()I
    .locals 1

    .line 111
    iget v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mSlotIndex:I

    return v0
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

    .line 121
    iget-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mUnixEpochTime:Landroid/os/TimestampedValue;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 174
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mSlotIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mUnixEpochTime:Landroid/os/TimestampedValue;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TelephonyTimeSuggestion{mSlotIndex=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mSlotIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUnixEpochTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mUnixEpochTime:Landroid/os/TimestampedValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDebugInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mDebugInfo:Ljava/util/ArrayList;

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

    .line 100
    iget v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mSlotIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mUnixEpochTime:Landroid/os/TimestampedValue;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 102
    iget-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion;->mDebugInfo:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 103
    return-void
.end method
