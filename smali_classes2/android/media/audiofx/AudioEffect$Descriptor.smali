.class public Landroid/media/audiofx/AudioEffect$Descriptor;
.super Ljava/lang/Object;
.source "AudioEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/AudioEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Descriptor"
.end annotation


# instance fields
.field public whitelist connectMode:Ljava/lang/String;

.field public whitelist implementor:Ljava/lang/String;

.field public whitelist name:Ljava/lang/String;

.field public whitelist type:Ljava/util/UUID;

.field public whitelist uuid:Ljava/util/UUID;


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/audiofx/AudioEffect$Descriptor;->connectMode:Ljava/lang/String;

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/audiofx/AudioEffect$Descriptor;->name:Ljava/lang/String;

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/audiofx/AudioEffect$Descriptor;->implementor:Ljava/lang/String;

    .line 324
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/lang/String;
    .param p3, "connectMode"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "implementor"    # Ljava/lang/String;

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    .line 310
    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    .line 311
    iput-object p3, p0, Landroid/media/audiofx/AudioEffect$Descriptor;->connectMode:Ljava/lang/String;

    .line 312
    iput-object p4, p0, Landroid/media/audiofx/AudioEffect$Descriptor;->name:Ljava/lang/String;

    .line 313
    iput-object p5, p0, Landroid/media/audiofx/AudioEffect$Descriptor;->implementor:Ljava/lang/String;

    .line 314
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 343
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 344
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    instance-of v2, p1, Landroid/media/audiofx/AudioEffect$Descriptor;

    if-nez v2, :cond_1

    goto :goto_1

    .line 346
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/media/audiofx/AudioEffect$Descriptor;

    .line 348
    .local v2, "that":Landroid/media/audiofx/AudioEffect$Descriptor;
    iget-object v3, p0, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    iget-object v4, v2, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    iget-object v4, v2, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    .line 349
    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/media/audiofx/AudioEffect$Descriptor;->connectMode:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/audiofx/AudioEffect$Descriptor;->connectMode:Ljava/lang/String;

    .line 350
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/media/audiofx/AudioEffect$Descriptor;->name:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/audiofx/AudioEffect$Descriptor;->name:Ljava/lang/String;

    .line 351
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/media/audiofx/AudioEffect$Descriptor;->implementor:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/audiofx/AudioEffect$Descriptor;->implementor:Ljava/lang/String;

    .line 352
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 348
    :goto_0
    return v0

    .line 344
    .end local v2    # "that":Landroid/media/audiofx/AudioEffect$Descriptor;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 328
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/audiofx/AudioEffect$Descriptor;->connectMode:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/audiofx/AudioEffect$Descriptor;->name:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/audiofx/AudioEffect$Descriptor;->implementor:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;

    .line 334
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect$Descriptor;->connectMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect$Descriptor;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect$Descriptor;->implementor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 339
    return-void
.end method
