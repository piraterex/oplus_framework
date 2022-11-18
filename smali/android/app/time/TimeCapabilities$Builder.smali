.class public Landroid/app/time/TimeCapabilities$Builder;
.super Ljava/lang/Object;
.source "TimeCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/time/TimeCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mConfigureAutoDetectionEnabledCapability:I

.field private blacklist mSuggestTimeManuallyCapability:I

.field private final blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConfigureAutoDetectionEnabledCapability(Landroid/app/time/TimeCapabilities$Builder;)I
    .locals 0

    iget p0, p0, Landroid/app/time/TimeCapabilities$Builder;->mConfigureAutoDetectionEnabledCapability:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSuggestTimeManuallyCapability(Landroid/app/time/TimeCapabilities$Builder;)I
    .locals 0

    iget p0, p0, Landroid/app/time/TimeCapabilities$Builder;->mSuggestTimeManuallyCapability:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserHandle(Landroid/app/time/TimeCapabilities$Builder;)Landroid/os/UserHandle;
    .locals 0

    iget-object p0, p0, Landroid/app/time/TimeCapabilities$Builder;->mUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/app/time/TimeCapabilities;)V
    .locals 1
    .param p1, "timeCapabilities"    # Landroid/app/time/TimeCapabilities;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-static {p1}, Landroid/app/time/TimeCapabilities;->-$$Nest$fgetmUserHandle(Landroid/app/time/TimeCapabilities;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/time/TimeCapabilities$Builder;->mUserHandle:Landroid/os/UserHandle;

    .line 147
    invoke-static {p1}, Landroid/app/time/TimeCapabilities;->-$$Nest$fgetmConfigureAutoTimeDetectionEnabledCapability(Landroid/app/time/TimeCapabilities;)I

    move-result v0

    iput v0, p0, Landroid/app/time/TimeCapabilities$Builder;->mConfigureAutoDetectionEnabledCapability:I

    .line 149
    invoke-static {p1}, Landroid/app/time/TimeCapabilities;->-$$Nest$fgetmSuggestTimeManuallyCapability(Landroid/app/time/TimeCapabilities;)I

    move-result v0

    iput v0, p0, Landroid/app/time/TimeCapabilities$Builder;->mSuggestTimeManuallyCapability:I

    .line 151
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Landroid/app/time/TimeCapabilities$Builder;->mUserHandle:Landroid/os/UserHandle;

    .line 155
    return-void
.end method

.method private blacklist verifyCapabilitySet(ILjava/lang/String;)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 181
    if-eqz p1, :cond_0

    .line 184
    return-void

    .line 182
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist build()Landroid/app/time/TimeCapabilities;
    .locals 2

    .line 174
    iget v0, p0, Landroid/app/time/TimeCapabilities$Builder;->mConfigureAutoDetectionEnabledCapability:I

    const-string v1, "configureAutoDetectionEnabledCapability"

    invoke-direct {p0, v0, v1}, Landroid/app/time/TimeCapabilities$Builder;->verifyCapabilitySet(ILjava/lang/String;)V

    .line 176
    iget v0, p0, Landroid/app/time/TimeCapabilities$Builder;->mSuggestTimeManuallyCapability:I

    const-string/jumbo v1, "suggestTimeManuallyCapability"

    invoke-direct {p0, v0, v1}, Landroid/app/time/TimeCapabilities$Builder;->verifyCapabilitySet(ILjava/lang/String;)V

    .line 177
    new-instance v0, Landroid/app/time/TimeCapabilities;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/time/TimeCapabilities;-><init>(Landroid/app/time/TimeCapabilities$Builder;Landroid/app/time/TimeCapabilities-IA;)V

    return-object v0
.end method

.method public blacklist setConfigureAutoTimeDetectionEnabledCapability(I)Landroid/app/time/TimeCapabilities$Builder;
    .locals 0
    .param p1, "setConfigureAutoTimeDetectionEnabledCapability"    # I

    .line 160
    iput p1, p0, Landroid/app/time/TimeCapabilities$Builder;->mConfigureAutoDetectionEnabledCapability:I

    .line 162
    return-object p0
.end method

.method public blacklist setSuggestTimeManuallyCapability(I)Landroid/app/time/TimeCapabilities$Builder;
    .locals 0
    .param p1, "suggestTimeManuallyCapability"    # I

    .line 168
    iput p1, p0, Landroid/app/time/TimeCapabilities$Builder;->mSuggestTimeManuallyCapability:I

    .line 169
    return-object p0
.end method
