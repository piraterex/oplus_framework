.class Lcom/android/internal/util/ProviderAccessStats$PerThreadData;
.super Ljava/lang/Object;
.source "ProviderAccessStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/ProviderAccessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PerThreadData"
.end annotation


# instance fields
.field public blacklist nestCount:I

.field public blacklist startUptimeMillis:J


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/util/ProviderAccessStats$PerThreadData-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/util/ProviderAccessStats$PerThreadData;-><init>()V

    return-void
.end method
