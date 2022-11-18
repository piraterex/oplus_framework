.class public final Landroid/os/BatteryConsumer$Dimensions;
.super Ljava/lang/Object;
.source "BatteryConsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dimensions"
.end annotation


# instance fields
.field public final blacklist powerComponent:I

.field public final blacklist processState:I


# direct methods
.method public constructor blacklist <init>(II)V
    .locals 0
    .param p1, "powerComponent"    # I
    .param p2, "processState"    # I

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput p1, p0, Landroid/os/BatteryConsumer$Dimensions;->powerComponent:I

    .line 213
    iput p2, p0, Landroid/os/BatteryConsumer$Dimensions;->processState:I

    .line 214
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, "dimensionSpecified":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget v2, p0, Landroid/os/BatteryConsumer$Dimensions;->powerComponent:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 221
    const-string/jumbo v2, "powerComponent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/BatteryConsumer;->-$$Nest$sfgetsPowerComponentNames()[Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Landroid/os/BatteryConsumer$Dimensions;->powerComponent:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const/4 v0, 0x1

    .line 224
    :cond_0
    iget v2, p0, Landroid/os/BatteryConsumer$Dimensions;->processState:I

    if-eqz v2, :cond_2

    .line 225
    if-eqz v0, :cond_1

    .line 226
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    :cond_1
    const-string/jumbo v2, "processState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/BatteryConsumer;->-$$Nest$sfgetsProcessStateNames()[Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Landroid/os/BatteryConsumer$Dimensions;->processState:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    const/4 v0, 0x1

    .line 231
    :cond_2
    if-nez v0, :cond_3

    .line 232
    const-string v2, "any components and process states"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
