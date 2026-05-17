--[[
    MADE BY @dircs
    At Discord!

    Open-Sourced DARKZ ui Library

    Copyright Font: Source Sans PRO Bold

]]

--[[

    NOTICE:
    Using AI to change the code or to change owner's names will result in DMCA

]]

--[[if LOADED and not _G.DEBUG then
	warn("script is already running", 0)
	return
end

pcall(function() getgenv().LOADED = true end)
if not game:IsLoaded() then game.Loaded:Wait() end]]


--HINT: 1: Workspace; 2: CoreGui; 3: Debris, 4: Players
local Model={[1]=Game:GetService'Workspace',[2]=Game:GetService'CoreGui',[3]=Game:GetService'Debris',[4]=Game:GetService'Players'};
local Enemies=Model[1]['Enemies'];
local NPCS=Model[1]['NPCs']

Instance.new('Folder',Model[2]).Name='Darkz'
-- Instances that we will not use now
local Contexts={
    TabMenu=Instance.new'Frame';
        Frame=Instance.new'Frame';
        UICorner2=Instance.new'UICorner';
        TextLabel=Instance.new'TextLabel';
        TextButton=Instance.new'TextButton';
        UICorner3=Instance.new'UICorner';
};
local InstanceContexts={
    ScreenGui=Instance.new'ScreenGui';
	Main=Instance.new'Frame';
    Toggle=Instance.new'ImageButton';--Toggle
    UIStroke=Instance.new'UIStroke';
    UICorner=Instance.new'UICorner';
    UIAspectRatioConstraint=Instance.new'UIAspectRatioConstraint';--End of toggle
	__Main1=Instance.new'Frame';
    UIDragDetector=Instance.new'UIDragDetector'; --DragSys
    --UIDragDetector1=Instance.new'UIDragDetector';
	__Title=Instance.new'Frame';
	UICorner=Instance.new'UICorner';
	TitleText=Instance.new'TextLabel';-- This
	CornerCover=Instance.new'Frame';
	__TabFrame=Instance.new'Frame';
	CornerCover1=Instance.new'Frame';
	UICorner1=Instance.new'UICorner';
    UICorner2=Instance.new'UICorner';
	CornerCover2=Instance.new'Frame';
	Scroll=Instance.new'ScrollingFrame';
	UIGridLayout=Instance.new'UIGridLayout';
	__ContentFrame=Instance.new'Frame';
	__Decor=Instance.new'Frame';
	ImageLabel=Instance.new'ImageLabel';
	UIAspectRatioConstraint=Instance.new'UIAspectRatioConstraint';
	ImageLabel1=Instance.new'ImageLabel';
};
--The property of all contexts in InstanceContexts. TO parent something, you should do: Parent=InstanceContexts['OBJECT_NAME'] be like.
local PropertyInstances={
    Main={
        Name='Main',
        BackgroundTransparency=1,
        BorderSizePixel=0,
        Position=UDim2.new(0, 0,0, 0),
        Size=UDim2.new(1, 1,1, 1)
    };
    Toggle={
        Parent=InstanceContexts['Main'],
        Name='Toggle',
        Image='rbxassetid://74475102332358',
        Position=UDim2.new(0, 0,0, 0),
        Size=UDim2.new(0, 70,0, 90)
    };
    UIStroke={
        Parent=InstanceContexts['Toggle'],
        ApplyStrokeMode=Enum.ApplyStrokeMode.Border,
        Thickness=2,
    };
    UICorner={
        Parent=InstanceContexts['Toggle']
    };
    UIAspectRatioConstraint={
        Parent=InstanceContexts['Toggle'],
        AspectRatio=1,
        AspectType=Enum.AspectType.FitWithinMaxSize,
        DominantAxis=Enum.DominantAxis.Width
    };
    __Main1={
        Parent=InstanceContexts['Main'],
        Name='__Main1',
        BorderSizePixel=0,
        Draggable=true,
        BackgroundColor3=Color3.fromRGB(32, 32, 32),
        Position=UDim2.new(0, 342,0, 240),
        Size=UDim2.new(0, 512,0, 312)
    };
    UIDragDetector={
        Parent=InstanceContexts['__Main1']
    };
    __Title={
        Parent=InstanceContexts['__Main1'],
        Name='__Title',
        BorderSizePixel=0,
        BackgroundColor3=Color3.fromRGB(50, 50, 50),
        Position=UDim2.new(0, 0,0, -30),
        Size=UDim2.new(0, 512,0, 30)
    };
    TitleText={
        Parent=InstanceContexts['__Title'],
        Name='TitleText',
        ZIndex=5,
        Font=Enum.Font.SourceSansBold,
        Text='   Test',
        TextXAlignment=Enum.TextXAlignment.Left,
        TextScaled=true,
        BackgroundTransparency=1,
        TextColor3=Color3.fromRGB(255, 255, 255),
        TextStrokeColor3=Color3.fromRGB(0, 0, 0),
        TextStrokeTransparency=0,
        BorderSizePixel=0,
        Position=UDim2.new(0, 0,0, 0),
        Size=UDim2.new(0, 512,0, 41)
    };
    __TabFrame={
        Parent=InstanceContexts['__Main1'],
        Name='__TabFrame',
        BorderSizePixel=0,
        BackgroundColor3=Color3.fromRGB(15, 15, 15),
        Position=UDim2.new(0, 0,0.035, 0),
        Size=UDim2.new(0, 101,0, 301)
    };
    CornerCover1={
        Parent=InstanceContexts['__TabFrame'],
        Name='CornerCover1',
        BorderSizePixel=0,
        BackgroundColor3=Color3.fromRGB(15, 15, 15),
        Position=UDim2.new(0, 0,-0.001, 0),
        Size=UDim2.new(0, 101,0, 21)
    };
    CornerCover2={
        Parent=InstanceContexts['__TabFrame'],
        Name='CornerCover2',
        BorderSizePixel=0,
        BackgroundColor3=Color3.fromRGB(15,15,15),
        Position=UDim2.new(0.465, 0,0.929, 0),
        Size=UDim2.new(0, 54,0, 21)
    };
    CornerCover={
        Parent=InstanceContexts['__Title'],
        Name='ConrerCover',
        BorderSizePixel=0,
        BackgroundColor3=Color3.fromRGB(50, 50, 50),
        Position=UDim2.new(0, 0,0, 19),
        Size=UDim2.new(0, 512,0, 22)
    };
    UICorner={
        Parent=InstanceContexts['__TabFrame']
    };
    UICorner1={
        Parent=InstanceContexts['__Title']
    };
    UICorner2={
        Parent=InstanceContexts['__Main1']
    };
    Scroll={
        Parent=InstanceContexts['__TabFrame'],
        Name='Scroll',
        BorderSizePixel=1,
        BorderColor3=Color3.fromRGB(27, 42, 53),
        ScrollBarThickness=5,
        BackgroundTransparency=1,
        Position=UDim2.new(0, 0,0.02, 0),
        Size=UDim2.new(0, 101,0, 294)
    };
    UIGridLayout={
        Parent=InstanceContexts['Scroll'],
        CellPadding=UDim2.new(0, 5,0, 0),
        CellSize=UDim2.new(0, 100,0, 50)
    };
    __ContentFrame={
        Parent=InstanceContexts['__Main1'],
        Name='__ContentFrame',
        BorderSizePixel=0,
        BackgroundTransparency=1,
        Position=UDim2.new(0.197, 0,0.035, 0),
        Size=UDim2.new(0, 400,0, 300)
    };
    __Decor={
        Parent=InstanceContexts['__Main1'],
        Name='__Decor',
        ClipsDescendants=true,
        BorderSizePixel=0,
        BackgroundTransparency=1,
        Position=UDim2.new(0.002, 0,0.035, 0),
        Size=UDim2.new(0, 511,0, 301)
    };
    ImageLabel={ --Right Corner Red Image
        Parent=InstanceContexts['__Decor'],
        Name='ImageLabel',
        BorderSizePixel=0,
        Image='rbxassetid://72369033405617',
        ImageColor3=Color3.fromRGB(85, 0, 127),
        ImageTransparency=0.96,
        BackgroundTransparency=1,
        Position=UDim2.new(0.589, 0,0.383, 0),
        Size=UDim2.new(0, 513,0, 435)
    };
    ImageLabel1={ -- Red Forms
        Parent=InstanceContexts['__Decor'],
        Name='ImageLabel',
        BorderSizePixel=0,
        Image='rbxassetid://88409692799170',
        ImageColor3=Color3.fromRGB(170, 0, 0),
        ImageTransparency=0.9,
        BackgroundTransparency=1,
        Position=UDim2.new(0, 0,0.542, 0),
        Size=UDim2.new(0, 114,0, 137)
    };

};


local Toggle=InstanceContexts['Toggle']
local MainFrame=InstanceContexts['__Main1']

Toggle.MouseButton1Click:connect(function()
    MainFrame.Visible=not MainFrame.Visible
end)


spawn(function()
    wait(1)
    for Name,Properties in next,PropertyInstances do
        local Object=InstanceContexts[Name];
        if Object then
            for Property,Value in next,Properties do
                Object[Property]=Value;
            end;
        end;
    end;

    InstanceContexts.Main.Parent=InstanceContexts.ScreenGui;
    InstanceContexts.ScreenGui.Parent=Model[2].Darkz;
end)


