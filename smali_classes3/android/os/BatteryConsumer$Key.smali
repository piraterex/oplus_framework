.class public final Landroid/os/BatteryConsumer$Key;
.super Ljava/lang/Object;
.source "BatteryConsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation


# instance fields
.field final blacklist mDurationColumnIndex:I

.field final blacklist mPowerColumnIndex:I

.field final blacklist mPowerModelColumnIndex:I

.field private blacklist mShortString:Ljava/lang/String;

.field public final blacklist powerComponent:I

.field public final blacklist processState:I


# direct methods
.method private constructor blacklist <init>(IIIII)V
    .locals 0
    .param p1, "powerComponent"    # I
    .param p2, "processState"    # I
    .param p3, "powerModelColumnIndex"    # I
    .param p4, "powerColumnIndex"    # I
    .param p5, "durationColumnIndex"    # I

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput p1, p0, Landroid/os/BatteryConsumer$Key;->powerComponent:I

    .line 264
    iput p2, p0, Landroid/os/BatteryConsumer$Key;->processState:I

    .line 266
    iput p3, p0, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    .line 267
    iput p4, p0, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    .line 268
    iput p5, p0, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    .line 269
    return-void
.end method

.method synthetic constructor blacklist <init>(IIIIILandroid/os/BatteryConsumer$Key-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/os/BatteryConsumer$Key;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 275
    move-object v0, p1

    check-cast v0, Landroid/os/BatteryConsumer$Key;

    .line 276
    .local v0, "key":Landroid/os/BatteryConsumer$Key;
    iget v1, p0, Landroid/os/BatteryConsumer$Key;->powerComponent:I

    iget v2, v0, Landroid/os/BatteryConsumer$Key;->powerComponent:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/os/BatteryConsumer$Key;->processState:I

    iget v2, v0, Landroid/os/BatteryConsumer$Key;->processState:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 282
    iget v0, p0, Landroid/os/BatteryConsumer$Key;->powerComponent:I

    .line 283
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/os/BatteryConsumer$Key;->processState:I

    add-int/2addr v1, v2

    .line 284
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public blacklist toShortString()Ljava/lang/String;
    .locals 2

    .line 291
    iget-object v0, p0, Landroid/os/BatteryConsumer$Key;->mShortString:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/os/BatteryConsumer$Key;->powerComponent:I

    invoke-static {v1}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    iget v1, p0, Landroid/os/BatteryConsumer$Key;->processState:I

    if-eqz v1, :cond_0

    .line 295
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 296
    iget v1, p0, Landroid/os/BatteryConsumer$Key;->processState:I

    invoke-static {v1}, Landroid/os/BatteryConsumer;->processStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/BatteryConsumer$Key;->mShortString:Ljava/lang/String;

    .line 300
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v0, p0, Landroid/os/BatteryConsumer$Key;->mShortString:Ljava/lang/String;

    return-object v0
.end method
