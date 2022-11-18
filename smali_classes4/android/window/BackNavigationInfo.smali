.class public final Landroid/window/BackNavigationInfo;
.super Ljava/lang/Object;
.source "BackNavigationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/BackNavigationInfo$Builder;,
        Landroid/window/BackNavigationInfo$BackTargetType;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/BackNavigationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist KEY_TRIGGER_BACK:Ljava/lang/String; = "TriggerBack"

.field public static final blacklist TYPE_CALLBACK:I = 0x4

.field public static final blacklist TYPE_CROSS_ACTIVITY:I = 0x2

.field public static final blacklist TYPE_CROSS_TASK:I = 0x3

.field public static final blacklist TYPE_DIALOG_CLOSE:I = 0x0

.field public static final blacklist TYPE_RETURN_TO_HOME:I = 0x1

.field public static final blacklist TYPE_UNDEFINED:I = -0x1


# instance fields
.field private final blacklist mDepartingAnimationTarget:Landroid/view/RemoteAnimationTarget;

.field private final blacklist mOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

.field private final blacklist mOnBackNavigationDone:Landroid/os/RemoteCallback;

.field private final blacklist mScreenshotBuffer:Landroid/hardware/HardwareBuffer;

.field private final blacklist mScreenshotSurface:Landroid/view/SurfaceControl;

.field private final blacklist mTaskWindowConfiguration:Landroid/app/WindowConfiguration;

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 243
    new-instance v0, Landroid/window/BackNavigationInfo$1;

    invoke-direct {v0}, Landroid/window/BackNavigationInfo$1;-><init>()V

    sput-object v0, Landroid/window/BackNavigationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/view/RemoteAnimationTarget;Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;Landroid/app/WindowConfiguration;Landroid/os/RemoteCallback;Landroid/window/IOnBackInvokedCallback;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "departingAnimationTarget"    # Landroid/view/RemoteAnimationTarget;
    .param p3, "screenshotSurface"    # Landroid/view/SurfaceControl;
    .param p4, "screenshotBuffer"    # Landroid/hardware/HardwareBuffer;
    .param p5, "taskWindowConfiguration"    # Landroid/app/WindowConfiguration;
    .param p6, "onBackNavigationDone"    # Landroid/os/RemoteCallback;
    .param p7, "onBackInvokedCallback"    # Landroid/window/IOnBackInvokedCallback;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput p1, p0, Landroid/window/BackNavigationInfo;->mType:I

    .line 129
    iput-object p2, p0, Landroid/window/BackNavigationInfo;->mDepartingAnimationTarget:Landroid/view/RemoteAnimationTarget;

    .line 130
    iput-object p3, p0, Landroid/window/BackNavigationInfo;->mScreenshotSurface:Landroid/view/SurfaceControl;

    .line 131
    iput-object p4, p0, Landroid/window/BackNavigationInfo;->mScreenshotBuffer:Landroid/hardware/HardwareBuffer;

    .line 132
    iput-object p5, p0, Landroid/window/BackNavigationInfo;->mTaskWindowConfiguration:Landroid/app/WindowConfiguration;

    .line 133
    iput-object p6, p0, Landroid/window/BackNavigationInfo;->mOnBackNavigationDone:Landroid/os/RemoteCallback;

    .line 134
    iput-object p7, p0, Landroid/window/BackNavigationInfo;->mOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    .line 135
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/BackNavigationInfo;->mType:I

    .line 139
    sget-object v0, Landroid/view/RemoteAnimationTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RemoteAnimationTarget;

    iput-object v0, p0, Landroid/window/BackNavigationInfo;->mDepartingAnimationTarget:Landroid/view/RemoteAnimationTarget;

    .line 140
    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    iput-object v0, p0, Landroid/window/BackNavigationInfo;->mScreenshotSurface:Landroid/view/SurfaceControl;

    .line 141
    sget-object v0, Landroid/hardware/HardwareBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/HardwareBuffer;

    iput-object v0, p0, Landroid/window/BackNavigationInfo;->mScreenshotBuffer:Landroid/hardware/HardwareBuffer;

    .line 142
    sget-object v0, Landroid/app/WindowConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WindowConfiguration;

    iput-object v0, p0, Landroid/window/BackNavigationInfo;->mTaskWindowConfiguration:Landroid/app/WindowConfiguration;

    .line 143
    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallback;

    iput-object v0, p0, Landroid/window/BackNavigationInfo;->mOnBackNavigationDone:Landroid/os/RemoteCallback;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/window/IOnBackInvokedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IOnBackInvokedCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/window/BackNavigationInfo;->mOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    .line 145
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/BackNavigationInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/BackNavigationInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist typeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .line 272
    packed-switch p0, :pswitch_data_0

    .line 286
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 284
    :pswitch_0
    const-string v0, "TYPE_CALLBACK"

    return-object v0

    .line 282
    :pswitch_1
    const-string v0, "TYPE_CROSS_TASK"

    return-object v0

    .line 280
    :pswitch_2
    const-string v0, "TYPE_CROSS_ACTIVITY"

    return-object v0

    .line 278
    :pswitch_3
    const-string v0, "TYPE_RETURN_TO_HOME"

    return-object v0

    .line 276
    :pswitch_4
    const-string v0, "TYPE_DIALOG_CLOSE"

    return-object v0

    .line 274
    :pswitch_5
    const-string v0, "TYPE_UNDEFINED"

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDepartingAnimationTarget()Landroid/view/RemoteAnimationTarget;
    .locals 1

    .line 174
    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mDepartingAnimationTarget:Landroid/view/RemoteAnimationTarget;

    return-object v0
.end method

.method public blacklist getOnBackInvokedCallback()Landroid/window/IOnBackInvokedCallback;
    .locals 1

    .line 221
    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    return-object v0
.end method

.method public blacklist getScreenshotHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .locals 1

    .line 198
    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mScreenshotBuffer:Landroid/hardware/HardwareBuffer;

    return-object v0
.end method

.method public blacklist getScreenshotSurface()Landroid/view/SurfaceControl;
    .locals 1

    .line 183
    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mScreenshotSurface:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public blacklist getTaskWindowConfiguration()Landroid/app/WindowConfiguration;
    .locals 1

    .line 207
    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mTaskWindowConfiguration:Landroid/app/WindowConfiguration;

    return-object v0
.end method

.method public blacklist getType()I
    .locals 1

    .line 164
    iget v0, p0, Landroid/window/BackNavigationInfo;->mType:I

    return v0
.end method

.method public blacklist onBackNavigationFinished(Z)V
    .locals 2
    .param p1, "triggerBack"    # Z

    .line 231
    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mOnBackNavigationDone:Landroid/os/RemoteCallback;

    if-eqz v0, :cond_0

    .line 232
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 233
    .local v0, "result":Landroid/os/Bundle;
    const-string v1, "TriggerBack"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 234
    iget-object v1, p0, Landroid/window/BackNavigationInfo;->mOnBackNavigationDone:Landroid/os/RemoteCallback;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 236
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BackNavigationInfo{mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/BackNavigationInfo;->mType:I

    .line 258
    invoke-static {v1}, Landroid/window/BackNavigationInfo;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/BackNavigationInfo;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), mDepartingAnimationTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/BackNavigationInfo;->mDepartingAnimationTarget:Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mScreenshotSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/BackNavigationInfo;->mScreenshotSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTaskWindowConfiguration= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/BackNavigationInfo;->mTaskWindowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mScreenshotBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/BackNavigationInfo;->mScreenshotBuffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOnBackNavigationDone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/BackNavigationInfo;->mOnBackNavigationDone:Landroid/os/RemoteCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOnBackInvokedCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/BackNavigationInfo;->mOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 149
    iget v0, p0, Landroid/window/BackNavigationInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mDepartingAnimationTarget:Landroid/view/RemoteAnimationTarget;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 151
    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mScreenshotSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 152
    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mScreenshotBuffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 153
    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mTaskWindowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 154
    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mOnBackNavigationDone:Landroid/os/RemoteCallback;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 155
    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 156
    return-void
.end method
