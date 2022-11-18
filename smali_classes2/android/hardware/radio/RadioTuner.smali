.class public abstract Landroid/hardware/radio/RadioTuner;
.super Ljava/lang/Object;
.source "RadioTuner.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/RadioTuner$Callback;
    }
.end annotation


# static fields
.field public static final whitelist DIRECTION_DOWN:I = 0x1

.field public static final whitelist DIRECTION_UP:I = 0x0

.field public static final whitelist ERROR_BACKGROUND_SCAN_FAILED:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ERROR_BACKGROUND_SCAN_UNAVAILABLE:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ERROR_CANCELLED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ERROR_CONFIG:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ERROR_HARDWARE_FAILURE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ERROR_SCAN_TIMEOUT:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ERROR_SERVER_DIED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist cancel()I
.end method

.method public abstract whitelist cancelAnnouncement()V
.end method

.method public abstract whitelist close()V
.end method

.method public abstract whitelist getConfiguration([Landroid/hardware/radio/RadioManager$BandConfig;)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist getDynamicProgramList(Landroid/hardware/radio/ProgramList$Filter;)Landroid/hardware/radio/ProgramList;
    .locals 1
    .param p1, "filter"    # Landroid/hardware/radio/ProgramList$Filter;

    .line 310
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract greylist-max-o getMetadataImage(I)Landroid/graphics/Bitmap;
.end method

.method public abstract whitelist getMute()Z
.end method

.method public whitelist getParameters(Ljava/util/List;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 431
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract whitelist getProgramInformation([Landroid/hardware/radio/RadioManager$ProgramInfo;)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist getProgramList(Ljava/util/Map;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist hasControl()Z
.end method

.method public abstract whitelist isAnalogForced()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist isAntennaConnected()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist isConfigFlagSet(I)Z
    .locals 1
    .param p1, "flag"    # I

    .line 362
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist isConfigFlagSupported(I)Z
    .locals 1
    .param p1, "flag"    # I

    .line 348
    const/4 v0, 0x0

    return v0
.end method

.method public abstract whitelist scan(IZ)I
.end method

.method public abstract whitelist setAnalogForced(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist setConfigFlag(IZ)V
    .locals 1
    .param p1, "flag"    # I
    .param p2, "value"    # Z

    .line 376
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract whitelist setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist setMute(Z)I
.end method

.method public whitelist setParameters(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 407
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract whitelist startBackgroundScan()Z
.end method

.method public abstract whitelist step(IZ)I
.end method

.method public abstract whitelist tune(II)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract whitelist tune(Landroid/hardware/radio/ProgramSelector;)V
.end method
