.class public final Landroid/service/autofill/FillEventHistory;
.super Ljava/lang/Object;
.source "FillEventHistory.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/FillEventHistory$Event;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/autofill/FillEventHistory;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "FillEventHistory"


# instance fields
.field private final greylist-max-o mClientState:Landroid/os/Bundle;

.field greylist-max-o mEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/autofill/FillEventHistory$Event;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mSessionId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 745
    new-instance v0, Landroid/service/autofill/FillEventHistory$1;

    invoke-direct {v0}, Landroid/service/autofill/FillEventHistory$1;-><init>()V

    sput-object v0, Landroid/service/autofill/FillEventHistory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "sessionId"    # I
    .param p2, "clientState"    # Landroid/os/Bundle;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p2, p0, Landroid/service/autofill/FillEventHistory;->mClientState:Landroid/os/Bundle;

    .line 117
    iput p1, p0, Landroid/service/autofill/FillEventHistory;->mSessionId:I

    .line 118
    return-void
.end method


# virtual methods
.method public greylist-max-o addEvent(Landroid/service/autofill/FillEventHistory$Event;)V
    .locals 2
    .param p1, "event"    # Landroid/service/autofill/FillEventHistory$Event;

    .line 106
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory;->mEvents:Ljava/util/List;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/service/autofill/FillEventHistory;->mEvents:Ljava/util/List;

    .line 109
    :cond_0
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory;->mEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getClientState()Landroid/os/Bundle;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 89
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory;->mClientState:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/autofill/FillEventHistory$Event;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory;->mEvents:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-o getSessionId()I
    .locals 1

    .line 75
    iget v0, p0, Landroid/service/autofill/FillEventHistory;->mSessionId:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory;->mEvents:Ljava/util/List;

    if-nez v0, :cond_0

    const-string/jumbo v0, "no events"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 132
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory;->mClientState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 133
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory;->mEvents:Ljava/util/List;

    if-nez v0, :cond_0

    .line 134
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    .line 136
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory;->mEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 139
    .local v0, "numEvents":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 140
    iget-object v2, p0, Landroid/service/autofill/FillEventHistory;->mEvents:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/FillEventHistory$Event;

    .line 141
    .local v2, "event":Landroid/service/autofill/FillEventHistory$Event;
    invoke-static {v2}, Landroid/service/autofill/FillEventHistory$Event;->-$$Nest$fgetmEventType(Landroid/service/autofill/FillEventHistory$Event;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    invoke-static {v2}, Landroid/service/autofill/FillEventHistory$Event;->-$$Nest$fgetmDatasetId(Landroid/service/autofill/FillEventHistory$Event;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    invoke-static {v2}, Landroid/service/autofill/FillEventHistory$Event;->-$$Nest$fgetmClientState(Landroid/service/autofill/FillEventHistory$Event;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 144
    invoke-static {v2}, Landroid/service/autofill/FillEventHistory$Event;->-$$Nest$fgetmSelectedDatasetIds(Landroid/service/autofill/FillEventHistory$Event;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 145
    invoke-static {v2}, Landroid/service/autofill/FillEventHistory$Event;->-$$Nest$fgetmIgnoredDatasetIds(Landroid/service/autofill/FillEventHistory$Event;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 146
    invoke-static {v2}, Landroid/service/autofill/FillEventHistory$Event;->-$$Nest$fgetmChangedFieldIds(Landroid/service/autofill/FillEventHistory$Event;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 147
    invoke-static {v2}, Landroid/service/autofill/FillEventHistory$Event;->-$$Nest$fgetmChangedDatasetIds(Landroid/service/autofill/FillEventHistory$Event;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 149
    invoke-static {v2}, Landroid/service/autofill/FillEventHistory$Event;->-$$Nest$fgetmManuallyFilledFieldIds(Landroid/service/autofill/FillEventHistory$Event;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 150
    invoke-static {v2}, Landroid/service/autofill/FillEventHistory$Event;->-$$Nest$fgetmManuallyFilledFieldIds(Landroid/service/autofill/FillEventHistory$Event;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 151
    invoke-static {v2}, Landroid/service/autofill/FillEventHistory$Event;->-$$Nest$fgetmManuallyFilledFieldIds(Landroid/service/autofill/FillEventHistory$Event;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 152
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v3, :cond_1

    .line 153
    invoke-static {v2}, Landroid/service/autofill/FillEventHistory$Event;->-$$Nest$fgetmManuallyFilledDatasetIds(Landroid/service/autofill/FillEventHistory$Event;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 152
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 156
    .end local v3    # "size":I
    .end local v4    # "j":I
    :cond_1
    invoke-static {v2}, Landroid/service/autofill/FillEventHistory$Event;->-$$Nest$fgetmDetectedFieldIds(Landroid/service/autofill/FillEventHistory$Event;)[Landroid/view/autofill/AutofillId;

    move-result-object v3

    .line 157
    .local v3, "detectedFields":[Landroid/view/autofill/AutofillId;
    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 158
    if-eqz v3, :cond_2

    .line 159
    invoke-static {v2}, Landroid/service/autofill/FillEventHistory$Event;->-$$Nest$fgetmDetectedFieldClassifications(Landroid/service/autofill/FillEventHistory$Event;)[Landroid/service/autofill/FieldClassification;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/service/autofill/FieldClassification;->writeArrayToParcel(Landroid/os/Parcel;[Landroid/service/autofill/FieldClassification;)V

    .line 162
    :cond_2
    invoke-static {v2}, Landroid/service/autofill/FillEventHistory$Event;->-$$Nest$fgetmSaveDialogNotShowReason(Landroid/service/autofill/FillEventHistory$Event;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    invoke-static {v2}, Landroid/service/autofill/FillEventHistory$Event;->-$$Nest$fgetmUiType(Landroid/service/autofill/FillEventHistory$Event;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    .end local v2    # "event":Landroid/service/autofill/FillEventHistory$Event;
    .end local v3    # "detectedFields":[Landroid/view/autofill/AutofillId;
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 166
    .end local v0    # "numEvents":I
    .end local v1    # "i":I
    :cond_3
    :goto_2
    return-void
.end method
