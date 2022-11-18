.class public Landroid/telecom/Logging/Session$Info;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Logging/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/Logging/Session$Info;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist methodPath:Ljava/lang/String;

.field public final blacklist ownerInfo:Ljava/lang/String;

.field public final blacklist sessionId:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 101
    new-instance v0, Landroid/telecom/Logging/Session$Info$1;

    invoke-direct {v0}, Landroid/telecom/Logging/Session$Info$1;-><init>()V

    sput-object v0, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "owner"    # Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Landroid/telecom/Logging/Session$Info;->sessionId:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Landroid/telecom/Logging/Session$Info;->methodPath:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Landroid/telecom/Logging/Session$Info;->ownerInfo:Ljava/lang/String;

    .line 69
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telecom/Logging/Session$Info;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist getExternalInfo(Landroid/telecom/Logging/Session;Ljava/lang/String;)Landroid/telecom/Logging/Session$Info;
    .locals 4
    .param p0, "s"    # Landroid/telecom/Logging/Session;
    .param p1, "ownerInfo"    # Ljava/lang/String;

    .line 87
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/telecom/Logging/Session;->getOwnerInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/telecom/Logging/Session;->getOwnerInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 91
    :cond_0
    if-eqz p1, :cond_1

    move-object v0, p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/telecom/Logging/Session;->getOwnerInfo()Ljava/lang/String;

    move-result-object v0

    :goto_0
    nop

    .line 96
    .local v0, "newInfo":Ljava/lang/String;
    new-instance v1, Landroid/telecom/Logging/Session$Info;

    invoke-static {p0}, Landroid/telecom/Logging/Session;->-$$Nest$mgetFullSessionId(Landroid/telecom/Logging/Session;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Landroid/telecom/Log;->DEBUG:Z

    if-nez v3, :cond_2

    .line 97
    invoke-static {p0}, Landroid/telecom/Logging/Session;->-$$Nest$misSessionExternal(Landroid/telecom/Logging/Session;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 96
    :goto_1
    invoke-virtual {p0, v3}, Landroid/telecom/Logging/Session;->getFullMethodPath(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Landroid/telecom/Logging/Session$Info;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static blacklist getInfo(Landroid/telecom/Logging/Session;)Landroid/telecom/Logging/Session$Info;
    .locals 4
    .param p0, "s"    # Landroid/telecom/Logging/Session;

    .line 75
    new-instance v0, Landroid/telecom/Logging/Session$Info;

    invoke-static {p0}, Landroid/telecom/Logging/Session;->-$$Nest$mgetFullSessionId(Landroid/telecom/Logging/Session;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Landroid/telecom/Log;->DEBUG:Z

    if-nez v2, :cond_0

    .line 76
    invoke-static {p0}, Landroid/telecom/Logging/Session;->-$$Nest$misSessionExternal(Landroid/telecom/Logging/Session;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 75
    :goto_0
    invoke-virtual {p0, v2}, Landroid/telecom/Logging/Session;->getFullMethodPath(Z)Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-virtual {p0}, Landroid/telecom/Logging/Session;->getOwnerInfo()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/telecom/Logging/Session$Info;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "destination"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 126
    iget-object v0, p0, Landroid/telecom/Logging/Session$Info;->sessionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Landroid/telecom/Logging/Session$Info;->methodPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Landroid/telecom/Logging/Session$Info;->ownerInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    return-void
.end method
