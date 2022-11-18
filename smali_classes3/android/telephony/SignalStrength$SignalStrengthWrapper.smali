.class Landroid/telephony/SignalStrength$SignalStrengthWrapper;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/telephony/ISignalStrengthWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SignalStrength;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SignalStrengthWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/SignalStrength;


# direct methods
.method private constructor blacklist <init>(Landroid/telephony/SignalStrength;)V
    .locals 0

    .line 1093
    iput-object p1, p0, Landroid/telephony/SignalStrength$SignalStrengthWrapper;->this$0:Landroid/telephony/SignalStrength;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telephony/SignalStrength;Landroid/telephony/SignalStrength$SignalStrengthWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength$SignalStrengthWrapper;-><init>(Landroid/telephony/SignalStrength;)V

    return-void
.end method


# virtual methods
.method public whitelist copyFrom(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .line 1127
    iget-object v0, p0, Landroid/telephony/SignalStrength$SignalStrengthWrapper;->this$0:Landroid/telephony/SignalStrength;

    invoke-virtual {v0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    .line 1128
    return-void
.end method

.method public whitelist getLteRsrp()I
    .locals 1

    .line 1134
    iget-object v0, p0, Landroid/telephony/SignalStrength$SignalStrengthWrapper;->this$0:Landroid/telephony/SignalStrength;

    iget-object v0, v0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthLte;->getRsrp()I

    move-result v0

    return v0
.end method

.method public whitelist getLteRssnr()I
    .locals 1

    .line 1139
    iget-object v0, p0, Landroid/telephony/SignalStrength$SignalStrengthWrapper;->this$0:Landroid/telephony/SignalStrength;

    iget-object v0, v0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthLte;->getRssnr()I

    move-result v0

    return v0
.end method

.method public whitelist getNrRsrp()I
    .locals 1

    .line 1144
    iget-object v0, p0, Landroid/telephony/SignalStrength$SignalStrengthWrapper;->this$0:Landroid/telephony/SignalStrength;

    iget-object v0, v0, Landroid/telephony/SignalStrength;->mNr:Landroid/telephony/CellSignalStrengthNr;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthNr;->getSsRsrp()I

    move-result v0

    return v0
.end method

.method public whitelist getNrSinr()I
    .locals 1

    .line 1149
    iget-object v0, p0, Landroid/telephony/SignalStrength$SignalStrengthWrapper;->this$0:Landroid/telephony/SignalStrength;

    iget-object v0, v0, Landroid/telephony/SignalStrength;->mNr:Landroid/telephony/CellSignalStrengthNr;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthNr;->getSsSinr()I

    move-result v0

    return v0
.end method

.method public whitelist getOemLevel0()I
    .locals 1

    .line 1096
    iget-object v0, p0, Landroid/telephony/SignalStrength$SignalStrengthWrapper;->this$0:Landroid/telephony/SignalStrength;

    iget v0, v0, Landroid/telephony/SignalStrength;->mOEMLevel_0:I

    return v0
.end method

.method public whitelist getOemLevel1()I
    .locals 1

    .line 1101
    iget-object v0, p0, Landroid/telephony/SignalStrength$SignalStrengthWrapper;->this$0:Landroid/telephony/SignalStrength;

    iget v0, v0, Landroid/telephony/SignalStrength;->mOEMLevel_1:I

    return v0
.end method

.method public whitelist isFake()Z
    .locals 1

    .line 1122
    iget-object v0, p0, Landroid/telephony/SignalStrength$SignalStrengthWrapper;->this$0:Landroid/telephony/SignalStrength;

    iget-boolean v0, v0, Landroid/telephony/SignalStrength;->mIsFake:Z

    return v0
.end method

.method public whitelist setFake(Z)V
    .locals 1
    .param p1, "isFake"    # Z

    .line 1117
    iget-object v0, p0, Landroid/telephony/SignalStrength$SignalStrengthWrapper;->this$0:Landroid/telephony/SignalStrength;

    iput-boolean p1, v0, Landroid/telephony/SignalStrength;->mIsFake:Z

    .line 1118
    return-void
.end method

.method public whitelist setOemLevel(II)V
    .locals 2
    .param p1, "oemLevel0"    # I
    .param p2, "oemLevel1"    # I

    .line 1106
    const/4 v0, -0x1

    if-eq v0, p1, :cond_0

    .line 1107
    iget-object v1, p0, Landroid/telephony/SignalStrength$SignalStrengthWrapper;->this$0:Landroid/telephony/SignalStrength;

    iput p1, v1, Landroid/telephony/SignalStrength;->mOEMLevel_0:I

    .line 1110
    :cond_0
    if-eq v0, p2, :cond_1

    .line 1111
    iget-object v0, p0, Landroid/telephony/SignalStrength$SignalStrengthWrapper;->this$0:Landroid/telephony/SignalStrength;

    iput p2, v0, Landroid/telephony/SignalStrength;->mOEMLevel_1:I

    .line 1113
    :cond_1
    return-void
.end method
