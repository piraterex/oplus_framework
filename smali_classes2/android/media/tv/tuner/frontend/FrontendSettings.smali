.class public abstract Landroid/media/tv/tuner/frontend/FrontendSettings;
.super Ljava/lang/Object;
.source "FrontendSettings.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/frontend/FrontendSettings$FrontendSpectralInversion;,
        Landroid/media/tv/tuner/frontend/FrontendSettings$InnerFec;,
        Landroid/media/tv/tuner/frontend/FrontendSettings$Type;
    }
.end annotation


# static fields
.field public static final whitelist FEC_11_15:J = 0x400000L

.field public static final whitelist FEC_11_20:J = 0x800000L

.field public static final whitelist FEC_11_45:J = 0x1000000L

.field public static final whitelist FEC_13_18:J = 0x2000000L

.field public static final whitelist FEC_13_45:J = 0x4000000L

.field public static final whitelist FEC_14_45:J = 0x8000000L

.field public static final whitelist FEC_1_2:J = 0x2L

.field public static final whitelist FEC_1_3:J = 0x4L

.field public static final whitelist FEC_1_4:J = 0x8L

.field public static final whitelist FEC_1_5:J = 0x10L

.field public static final whitelist FEC_23_36:J = 0x10000000L

.field public static final whitelist FEC_25_36:J = 0x20000000L

.field public static final whitelist FEC_26_45:J = 0x40000000L

.field public static final whitelist FEC_28_45:J = 0x80000000L

.field public static final whitelist FEC_29_45:J = 0x100000000L

.field public static final whitelist FEC_2_3:J = 0x20L

.field public static final whitelist FEC_2_5:J = 0x40L

.field public static final whitelist FEC_2_9:J = 0x80L

.field public static final whitelist FEC_31_45:J = 0x200000000L

.field public static final whitelist FEC_32_45:J = 0x400000000L

.field public static final whitelist FEC_3_4:J = 0x100L

.field public static final whitelist FEC_3_5:J = 0x200L

.field public static final whitelist FEC_4_15:J = 0x800L

.field public static final whitelist FEC_4_5:J = 0x400L

.field public static final whitelist FEC_5_6:J = 0x1000L

.field public static final whitelist FEC_5_9:J = 0x2000L

.field public static final whitelist FEC_6_7:J = 0x4000L

.field public static final whitelist FEC_77_90:J = 0x800000000L

.field public static final whitelist FEC_7_15:J = 0x20000L

.field public static final whitelist FEC_7_8:J = 0x8000L

.field public static final whitelist FEC_7_9:J = 0x10000L

.field public static final whitelist FEC_8_15:J = 0x80000L

.field public static final whitelist FEC_8_9:J = 0x40000L

.field public static final whitelist FEC_9_10:J = 0x100000L

.field public static final whitelist FEC_9_20:J = 0x200000L

.field public static final whitelist FEC_AUTO:J = 0x1L

.field public static final whitelist FEC_UNDEFINED:J = 0x0L

.field public static final whitelist FRONTEND_SPECTRAL_INVERSION_INVERTED:I = 0x2

.field public static final whitelist FRONTEND_SPECTRAL_INVERSION_NORMAL:I = 0x1

.field public static final whitelist FRONTEND_SPECTRAL_INVERSION_UNDEFINED:I = 0x0

.field public static final whitelist TYPE_ANALOG:I = 0x1

.field public static final whitelist TYPE_ATSC:I = 0x2

.field public static final whitelist TYPE_ATSC3:I = 0x3

.field public static final whitelist TYPE_DTMB:I = 0xa

.field public static final whitelist TYPE_DVBC:I = 0x4

.field public static final whitelist TYPE_DVBS:I = 0x5

.field public static final whitelist TYPE_DVBT:I = 0x6

.field public static final whitelist TYPE_ISDBS:I = 0x7

.field public static final whitelist TYPE_ISDBS3:I = 0x8

.field public static final whitelist TYPE_ISDBT:I = 0x9

.field public static final whitelist TYPE_UNDEFINED:I


# instance fields
.field private blacklist mEndFrequency:J

.field private final blacklist mFrequency:J

.field private blacklist mSpectralInversion:I


# direct methods
.method constructor blacklist <init>(J)V
    .locals 2
    .param p1, "frequency"    # J

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/tv/tuner/frontend/FrontendSettings;->mEndFrequency:J

    .line 277
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/frontend/FrontendSettings;->mSpectralInversion:I

    .line 279
    iput-wide p1, p0, Landroid/media/tv/tuner/frontend/FrontendSettings;->mFrequency:J

    return-void
.end method


# virtual methods
.method public whitelist getEndFrequency()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 316
    invoke-virtual {p0}, Landroid/media/tv/tuner/frontend/FrontendSettings;->getEndFrequencyLong()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public whitelist getEndFrequencyLong()J
    .locals 2

    .line 326
    iget-wide v0, p0, Landroid/media/tv/tuner/frontend/FrontendSettings;->mEndFrequency:J

    return-wide v0
.end method

.method public whitelist getFrequency()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 295
    invoke-virtual {p0}, Landroid/media/tv/tuner/frontend/FrontendSettings;->getFrequencyLong()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public whitelist getFrequencyLong()J
    .locals 2

    .line 304
    iget-wide v0, p0, Landroid/media/tv/tuner/frontend/FrontendSettings;->mFrequency:J

    return-wide v0
.end method

.method public whitelist getFrontendSpectralInversion()I
    .locals 1

    .line 336
    iget v0, p0, Landroid/media/tv/tuner/frontend/FrontendSettings;->mSpectralInversion:I

    return v0
.end method

.method public abstract whitelist getType()I
.end method

.method public whitelist setEndFrequency(I)V
    .locals 2
    .param p1, "frequency"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 370
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/media/tv/tuner/frontend/FrontendSettings;->setEndFrequencyLong(J)V

    .line 371
    return-void
.end method

.method public whitelist setEndFrequencyLong(J)V
    .locals 2
    .param p1, "endFrequency"    # J

    .line 386
    const v0, 0x10001

    const-string v1, "setEndFrequency"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 391
    iput-wide p1, p0, Landroid/media/tv/tuner/frontend/FrontendSettings;->mEndFrequency:J

    goto :goto_0

    .line 389
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endFrequency must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist setSpectralInversion(I)V
    .locals 2
    .param p1, "inversion"    # I

    .line 349
    const v0, 0x10001

    const-string v1, "setSpectralInversion"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    iput p1, p0, Landroid/media/tv/tuner/frontend/FrontendSettings;->mSpectralInversion:I

    .line 353
    :cond_0
    return-void
.end method
