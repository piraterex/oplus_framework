.class public final Landroid/service/contentcapture/ActivityEvent;
.super Ljava/lang/Object;
.source "ActivityEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/contentcapture/ActivityEvent$ActivityEventType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/contentcapture/ActivityEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist TYPE_ACTIVITY_DESTROYED:I = 0x18

.field public static final whitelist TYPE_ACTIVITY_PAUSED:I = 0x2

.field public static final whitelist TYPE_ACTIVITY_RESUMED:I = 0x1

.field public static final blacklist TYPE_ACTIVITY_STARTED:I = 0x2710

.field public static final whitelist TYPE_ACTIVITY_STOPPED:I = 0x17


# instance fields
.field private final blacklist mComponentName:Landroid/content/ComponentName;

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 146
    new-instance v0, Landroid/service/contentcapture/ActivityEvent$1;

    invoke-direct {v0}, Landroid/service/contentcapture/ActivityEvent$1;-><init>()V

    sput-object v0, Landroid/service/contentcapture/ActivityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/ComponentName;I)V
    .locals 0
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "type"    # I

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Landroid/service/contentcapture/ActivityEvent;->mComponentName:Landroid/content/ComponentName;

    .line 87
    iput p2, p0, Landroid/service/contentcapture/ActivityEvent;->mType:I

    .line 88
    return-void
.end method

.method public static blacklist getTypeAsString(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I

    .line 112
    sparse-switch p0, :sswitch_data_0

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UKNOWN_TYPE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 122
    :sswitch_0
    const-string v0, "ACTIVITY_STARTED"

    return-object v0

    .line 120
    :sswitch_1
    const-string v0, "ACTIVITY_DESTROYED"

    return-object v0

    .line 118
    :sswitch_2
    const-string v0, "ACTIVITY_STOPPED"

    return-object v0

    .line 116
    :sswitch_3
    const-string v0, "ACTIVITY_PAUSED"

    return-object v0

    .line 114
    :sswitch_4
    const-string v0, "ACTIVITY_RESUMED"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x17 -> :sswitch_2
        0x18 -> :sswitch_1
        0x2710 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 95
    iget-object v0, p0, Landroid/service/contentcapture/ActivityEvent;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist getEventType()I
    .locals 1

    .line 107
    iget v0, p0, Landroid/service/contentcapture/ActivityEvent;->mType:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ActivityEvent["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/contentcapture/ActivityEvent;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 132
    const-string v1, "]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/contentcapture/ActivityEvent;->mType:I

    invoke-static {v1}, Landroid/service/contentcapture/ActivityEvent;->getTypeAsString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 142
    iget-object v0, p0, Landroid/service/contentcapture/ActivityEvent;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 143
    iget v0, p0, Landroid/service/contentcapture/ActivityEvent;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    return-void
.end method
