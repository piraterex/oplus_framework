.class public final Landroid/location/GnssMeasurementRequest$Builder;
.super Ljava/lang/Object;
.source "GnssMeasurementRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssMeasurementRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCorrelationVectorOutputsEnabled:Z

.field private blacklist mFullTracking:Z

.field private blacklist mIntervalMillis:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    return-void
.end method

.method public constructor whitelist <init>(Landroid/location/GnssMeasurementRequest;)V
    .locals 1
    .param p1, "request"    # Landroid/location/GnssMeasurementRequest;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    invoke-virtual {p1}, Landroid/location/GnssMeasurementRequest;->isCorrelationVectorOutputsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/location/GnssMeasurementRequest$Builder;->mCorrelationVectorOutputsEnabled:Z

    .line 174
    invoke-virtual {p1}, Landroid/location/GnssMeasurementRequest;->isFullTracking()Z

    move-result v0

    iput-boolean v0, p0, Landroid/location/GnssMeasurementRequest$Builder;->mFullTracking:Z

    .line 175
    invoke-virtual {p1}, Landroid/location/GnssMeasurementRequest;->getIntervalMillis()I

    move-result v0

    iput v0, p0, Landroid/location/GnssMeasurementRequest$Builder;->mIntervalMillis:I

    .line 176
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/location/GnssMeasurementRequest;
    .locals 5

    .line 231
    new-instance v0, Landroid/location/GnssMeasurementRequest;

    iget-boolean v1, p0, Landroid/location/GnssMeasurementRequest$Builder;->mFullTracking:Z

    iget-boolean v2, p0, Landroid/location/GnssMeasurementRequest$Builder;->mCorrelationVectorOutputsEnabled:Z

    iget v3, p0, Landroid/location/GnssMeasurementRequest$Builder;->mIntervalMillis:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/location/GnssMeasurementRequest;-><init>(ZZILandroid/location/GnssMeasurementRequest-IA;)V

    return-object v0
.end method

.method public whitelist setCorrelationVectorOutputsEnabled(Z)Landroid/location/GnssMeasurementRequest$Builder;
    .locals 0
    .param p1, "value"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 188
    iput-boolean p1, p0, Landroid/location/GnssMeasurementRequest$Builder;->mCorrelationVectorOutputsEnabled:Z

    .line 189
    return-object p0
.end method

.method public whitelist setFullTracking(Z)Landroid/location/GnssMeasurementRequest$Builder;
    .locals 0
    .param p1, "value"    # Z

    .line 210
    iput-boolean p1, p0, Landroid/location/GnssMeasurementRequest$Builder;->mFullTracking:Z

    .line 211
    return-object p0
.end method

.method public whitelist setIntervalMillis(I)Landroid/location/GnssMeasurementRequest$Builder;
    .locals 3
    .param p1, "value"    # I

    .line 223
    const/4 v0, 0x0

    const v1, 0x7fffffff

    const-string v2, "intervalMillis"

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/location/GnssMeasurementRequest$Builder;->mIntervalMillis:I

    .line 225
    return-object p0
.end method
