.class public final Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;
.super Ljava/lang/Object;
.source "TelephonyTimeSuggestion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/timedetector/TelephonyTimeSuggestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDebugInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSlotIndex:I

.field private blacklist mUnixEpochTime:Landroid/os/TimestampedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDebugInfo(Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->mDebugInfo:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSlotIndex(Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;)I
    .locals 0

    iget p0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->mSlotIndex:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUnixEpochTime(Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;)Landroid/os/TimestampedValue;
    .locals 0

    iget-object p0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->mUnixEpochTime:Landroid/os/TimestampedValue;

    return-object p0
.end method

.method public constructor blacklist <init>(I)V
    .locals 0
    .param p1, "slotIndex"    # I

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput p1, p0, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->mSlotIndex:I

    .line 203
    return-void
.end method


# virtual methods
.method public blacklist addDebugInfo(Ljava/lang/String;)Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;
    .locals 1
    .param p1, "debugInfo"    # Ljava/lang/String;

    .line 228
    iget-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->mDebugInfo:Ljava/util/List;

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->mDebugInfo:Ljava/util/List;

    .line 231
    :cond_0
    iget-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->mDebugInfo:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    return-object p0
.end method

.method public blacklist build()Landroid/app/timedetector/TelephonyTimeSuggestion;
    .locals 2

    .line 238
    new-instance v0, Landroid/app/timedetector/TelephonyTimeSuggestion;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/timedetector/TelephonyTimeSuggestion;-><init>(Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;Landroid/app/timedetector/TelephonyTimeSuggestion-IA;)V

    return-object v0
.end method

.method public blacklist setUnixEpochTime(Landroid/os/TimestampedValue;)Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;"
        }
    .end annotation

    .line 212
    .local p1, "unixEpochTime":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    .line 214
    invoke-virtual {p1}, Landroid/os/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_0
    iput-object p1, p0, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->mUnixEpochTime:Landroid/os/TimestampedValue;

    .line 218
    return-object p0
.end method
